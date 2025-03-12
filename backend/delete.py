from backend.app import app
from backend.db import conn

def delete(title: str):
    print(title)
    conn.execute(
            """
            Delete from notes where title=?
            """,
            (title,),
        )
    conn.commit()
    
def deleteFolder(name: str):
    conn.execute("Delete from folders where name=?" (name,),)
    conn.commit() 


@app.delete("/delete_file")
def delete_file(title):
   
    delete(title)

    return {"deleted" : "OK"}


@app.delete("/delete_folder")
def delete_folder(name):
    deleteFolder(name)
    return "this folder is deleted"

