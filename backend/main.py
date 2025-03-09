from fastapi import FastAPI, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import psycopg  # psycopg3
from pgvector.psycopg import register_vector
import os


from notes_rag_testing import generate_rag_response

app = FastAPI(title="Sneha app")

DATA_FOLDER = "./data"

# Database Connection
def create_db_connection() -> psycopg.Connection:
    """Create and return a database connection."""
    conn = psycopg.connect(
        "postgres://postgres:postgres@localhost:5432/postgres"
        # Modify this for your setup
    )
    register_vector(conn)
    return conn

# Initialize DB Connection
conn = create_db_connection()


# Allow frontend requests
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Pydantic model for saving files
class FileContent(BaseModel):
    path: str
    content: str

def delete_and_insert_note(title: str, text: str):
    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO notes (title, text)
            VALUES (%s, %s)
            ON CONFLICT (title) DO UPDATE 
            SET text = EXCLUDED.text
            """,
            (title, text),
        )
        conn.commit()


def delete(title: str):
    print(title)
    with conn.cursor() as cur:
        cur.execute(
            """
            Delete from notes where title=%s
            """,
            (title,),
        )
        conn.commit()

# # List files & folders
# @app.get("/files")
# def list_files():
#     file_tree = []
#     for root, dirs, files in os.walk(DATA_FOLDER):
#         relative_path = os.path.relpath(root, DATA_FOLDER)
#         file_tree.append({"path": relative_path, "folders": dirs, "files": [f for f in files if f.endswith(".md")]})
#     return file_tree

# Read a file
@app.get("/read")
def read_file(path: str):
    full_path = os.path.join(DATA_FOLDER, path)
    if not os.path.exists(full_path):
        raise HTTPException(status_code=404, detail="File not found")
    with open(full_path, "r", encoding="utf-8") as f:
        return {"content": f.read()}

@app.delete("/delete_file")
def delete_file(path):
    # decoded_path = urllib.parse.unquote(path)  # Decode URL-encoded spaces (%20)
    full_path = os.path.join(DATA_FOLDER, path)
    if not os.path.exists(full_path):
        raise HTTPException(status_code=404, detail="File not found")
    os.remove(full_path)
    title = os.path.splitext(os.path.basename(path))[0]
    delete(title)

    return {"deleted" : "OK"}


# Save a file (deletes old note and inserts new one)
@app.post("/save")
def save_file(data: FileContent):
    full_path = os.path.join(DATA_FOLDER, data.path)
    
    # Save to the file system
    with open(full_path, "w", encoding="utf-8") as f:
        f.write(data.content)

    # Extract title (filename without extension)
    title = os.path.splitext(os.path.basename(data.path))[0]

    # Delete old note and insert new one
    delete_and_insert_note(title, data.content)
    print("Done")
    return {"message": "File saved and database entry replaced successfully"}


# Pydantic Model for Query
class QueryModel(BaseModel):
    query: str

# Search notes by text
@app.post("/question")
def search_notes(data: QueryModel):
    query = data.query.lower()

    response = generate_rag_response(query)
    print(response)
    return {"response": response}


# Model for updating emojis
class EmojiUpdate(BaseModel):
    title: str
    emoji: str

# Fetch files & emojis
@app.get("/files")
def list_files():
    # Fetch emojis from the database
    with conn.cursor() as cur:
        cur.execute("SELECT title, emoji FROM notes")
        notes = {title: emoji for title, emoji in cur.fetchall()}  # Convert to dict {title: emoji}

    file_tree = []
    for root, dirs, files in os.walk(DATA_FOLDER):
        relative_path = os.path.relpath(root, DATA_FOLDER)
        file_tree.append({
            "path": relative_path,
            "folders": dirs,
            "files": [
                {"name": f, "emoji": notes.get(os.path.splitext(f)[0], '📝')}  # Get emoji or default to 📝
                for f in files if f.endswith(".md")
            ]
        })

    return file_tree


# Save emoji for a note
@app.post("/update-emoji")
def update_emoji(data: EmojiUpdate):
    with conn.cursor() as cur:
        cur.execute("UPDATE notes SET emoji = %s WHERE title = %s", (data.emoji, data.title))
        conn.commit()
    return {"message": "Emoji updated"}



# Pydantic model for new note
class NewNote(BaseModel):
    path: str

# Create a new note
@app.post("/new-note")
def create_new_note(data: NewNote):
    full_path = os.path.join(DATA_FOLDER, data.path)

    # Prevent overwriting existing files
    if os.path.exists(full_path):
        raise HTTPException(status_code=400, detail="File already exists")

    # Create the new file with default content
    with open(full_path, "w", encoding="utf-8") as f:
        f.write("# " + os.path.splitext(data.path)[0] + "\n\n")

    # Insert into database
    title = os.path.splitext(os.path.basename(data.path))[0]
    with conn.cursor() as cur:
        cur.execute("INSERT INTO notes (title, text, emoji) VALUES (%s, %s, %s) ON CONFLICT (title) DO NOTHING",
                    (title, "", "📝"))
        conn.commit()

    return {"message": "New note created"}



# if __name__ == "__main__":
#     import uvicorn
#     uvicorn.run(app, host="127.0.0.1", port=8000)