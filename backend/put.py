from pydantic import BaseModel
from backend.app import app
from backend.db import conn

class EmojiUpdate(BaseModel):
    title: str
    emoji: str
    
    
class FileContent(BaseModel):
    title: str
    content: str
    

def update_fileContent(title: str, text:str):
    conn.execute(
        """UPDATE notes SET text = ? WHERE title = ?""", (text, title),)
    conn.commit()
    

@app.put("/update")
def update_file(data: FileContent):
    print("inside update")
    update_fileContent(data.title, data.content)
    return {"message": "File updated"}