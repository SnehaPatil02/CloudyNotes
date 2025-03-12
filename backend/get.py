
from typing import Dict, List
from fastapi import HTTPException
from backend.app import app
from backend.db import conn

def fetch_file_content(path: str):
   
        cur = conn.execute("SELECT * FROM notes WHERE title = ?;", (path,))
        row = cur.fetchone()
        
        return row[3] if row else None


# Read a file
@app.get("/read")
def read_file(path: str):
    content = fetch_file_content(path)
    if not content:
        raise HTTPException(status_code=404, detail="File not found in database")
    
    return {"content": content}



# # Fetch files & emojis
@app.get("/get_data")
def list_files():
    # return {"notes": [], "folders": []}
    # Fetch emojis from the database
    # with conn.cursor() as cur:
    cur = conn.execute("SELECT title, emoji, folder_id FROM notes")
    folder_cur = conn.execute("Select id, name from folders")
    # call folders table get all folderid and name
    # create dict folderMap =  {"folderid","foldername"}
    folderMap:Dict[int, str] ={id:  name for id, name in folder_cur.fetchall()}
    notes:List[Dict[str, str|int, int, str]] = [{"title": title, "emoji": emoji or"📝", "folder_id": folder_id, "folder_name": folderMap[folder_id] } for title, emoji, folder_id in cur.fetchall()] 
    # return {notes:[....], "folders":[....]}
    
    return {"notes": notes, "folders": folderMap}
