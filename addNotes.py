import os
from backend.db import conn

print("start")

DATA_FOLDER = "./backend/data"


# Function to insert a note into the database
def save_note(conn, title, text):
    print("------------")
    print(text)
    # with conn.cursor() as cur:
    conn.execute('INSERT INTO notes (title, "text", folder_id) VALUES (?, ?, 1)', (title, text))
    conn.commit()

# Walk through all subdirectories
for root, _, files in os.walk(DATA_FOLDER):
    for filename in files:
        if filename.endswith(".md"):
            file_path = os.path.join(root, filename)
            with open(file_path, "r", encoding="utf-8") as file:
                content = file.read()
                title = os.path.splitext(filename)[0].rsplit(" ",1)[0]  # Extract title from filename
                # print(title)
                save_note(conn, title, content)
                print(f"Saved: {title} from {file_path}")

# Close the database connection
# conn.close()
