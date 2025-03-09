import os
from pgvector.psycopg import register_vector
import psycopg  # psycopg3
from psycopg.rows import dict_row
print("start")

DATA_FOLDER = "./backend/data"

def create_db_connection() -> psycopg.Connection:
    """Create and return a database connection."""
    conn = psycopg.connect(
        "postgres://postgres:postgres@localhost:5432/postgres"
        # Modify connection string as needed for your setup
    )
    register_vector(conn)
    return conn

# Function to insert a note into the database
def save_note(conn, title, text):
    with conn.cursor() as cur:
        cur.execute("INSERT INTO notes (title, text) VALUES (%s, %s)", (title, text))
        conn.commit()


# Get a database connection
conn = create_db_connection()

# Walk through all subdirectories
for root, _, files in os.walk(DATA_FOLDER):
    for filename in files:
        if filename.endswith(".md"):
            file_path = os.path.join(root, filename)
            with open(file_path, "r", encoding="utf-8") as file:
                content = file.read()
                title = os.path.splitext(filename)[0]  # Extract title from filename
                save_note(conn, title, content)
                print(f"Saved: {title} from {file_path}")

# Close the database connection
conn.close()
