import os
from dotenv import load_dotenv, dotenv_values
import libsql_experimental as libsql

load_dotenv()

def create_db_connection():
    db_url = os.environ["Turso_url"]
    db_token = os.environ["Turso_Token"]
    print("From .env file:", dotenv_values())
    
    print("From os.environ:", os.environ.get("Turso_Token"))
    conn = libsql.connect("hello.db")
    
    cur = conn.execute("SELECT * FROM notes;")
    row = cur.fetchone()
    print(row)
    return conn

# Initialize DB Connection
conn = create_db_connection()

def createFolder():
    conn.execute("""CREATE TABLE IF NOT EXISTS  folders (
  id      INTEGER PRIMARY KEY AUTOINCREMENT,
  name    text unique
  
  )""")
    conn.commit()
    run_sql_file("./createdb/exportfolders.sql")

def createTemplate():
    conn.execute("""CREATE TABLE IF NOT EXISTS template (
  id int,
  template text
)""")
    conn.commit()
    run_sql_file("./createdb/exporttemplate.sql")

def createNotes():
    conn.execute("""CREATE TABLE IF NOT EXISTS  notes (
    id      INTEGER PRIMARY KEY AUTOINCREMENT,
    title   TEXT UNIQUE,
    emoji   TEXT,
    "text"  TEXT,
    folder_id Integer not NULL,
    FOREIGN KEY (`folder_id`) REFERENCES `folders`(`id`) ON DELETE CASCADE
)""")
    conn.commit()
    run_sql_file("./createdb/exportnotes.sql")
    
def run_sql_file( filename):
    with open(filename, "r") as f:
        sql_script = f.read()
        statements = sql_script.split("INSERT INTO \"")
        for stmt in statements:
            stmt = stmt.strip()
            if not stmt:
                continue
            stmt = "INSERT INTO \"" + stmt
            if stmt:  # skip empty lines
                try:
                    conn.execute(stmt)
                except:
                    print(stmt)
                    raise
        conn.commit()

# createFolder()    
# createNotes()
# createTemplate()