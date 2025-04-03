import os
from dotenv import load_dotenv
import libsql_experimental as libsql

load_dotenv()

def create_db_connection():
    print(os.environ["Turso_Token"])
    db_url = os.environ["Turso_url"]
    db_token = os.environ["Turso_Token"] 
    conn = libsql.connect("hello.db")
    # conn = libsql.connect("hello.db", sync_url= db_url, auth_token= db_token)
    # conn.sync()
    return conn
    

# Initialize DB Connection
conn = create_db_connection()