import os
from dotenv import load_dotenv, dotenv_values
import libsql_experimental as libsql

load_dotenv(override=True)

def create_db_connection():
    db_url = os.environ["Turso_url"]
    db_token = os.environ["Turso_Token"]
    print("From .env file:", dotenv_values())
    
    print("From os.environ:", os.environ.get("Turso_Token"))
    
    conn = libsql.connect("hello.db", sync_url=db_url, auth_token=db_token)
    conn.sync()
    cur = conn.execute("SELECT * FROM notes;")
    row = cur.fetchone()
    print(row)
    
    return conn

# Initialize DB Connection
conn = create_db_connection()

    
