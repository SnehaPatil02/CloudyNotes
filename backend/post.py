
# Model for updating emojis
from typing import List, Optional
from pydantic import BaseModel, Field
from backend.app import app
from backend.db import conn
from google import genai
from google.genai.types import *
import os

client = genai.Client(api_key=os.environ["GEMINI_KEY"])

class EmojiUpdate(BaseModel):
    title: str
    emoji: str
    
    

# Pydantic model for saving files
class FileContent(BaseModel):
    title: str
    content: str


class FolderContent(BaseModel):
    name: str


def delete_and_insert_note(title: str, text: str, folderId:str = "1"):
    
        conn.execute(
            """
            INSERT INTO notes (title, text, folder_id)
            VALUES (?, ?, ?)
            ON CONFLICT (title) DO UPDATE 
            SET text = EXCLUDED.text
            """,
            (title, text, folderId),
        )
        conn.commit()


# Save emoji for a note
@app.post("/update-emoji")
def update_emoji(data: EmojiUpdate):
    with conn.cursor() as cur:
        cur.execute("UPDATE notes SET emoji = %s WHERE title = %s", (data.emoji, data.title))
        conn.commit()
    return {"message": "Emoji updated"}




@app.post("/addFolder")
def add_folder(folderContent:FolderContent):
    cursor = conn.execute('INSERT INTO folders (name) VALUES (?)', (folderContent.name,))
    conn.commit()
    folder_id = cursor.lastrowid
    #create new notes called home in that folder
   
    print("Folder Name:", folderContent.name + str(folder_id))
    delete_and_insert_note(folderContent.name +"- Home", "", folderId=str(folder_id))
    return {folderContent.name + " Folder is created" }

# Save a file (deletes old note and inserts new one)
@app.post("/save")
def save_file(data: FileContent):
    
    delete_and_insert_note(data.title, data.content)
    print("Done")
    return {"message": "File saved and database entry replaced successfully"}



class ChatContent(BaseModel):
    text: str
    
    
class ConversationHistory(BaseModel):
    chat: List[ChatContent]
    llm_history: Optional[List[Content]]
    context: Optional[str] = Field(default=None)
    web_search: bool 

google_search_tool = Tool(
    google_search = GoogleSearch()
)

def web_search(data: ConversationHistory):
    gemini_chat = client.chats.create(
        model='gemini-2.0-flash-001',
        config=GenerateContentConfig(
            tools=[google_search_tool],
            response_modalities=["TEXT"],
        ) ,
        history= data.llm_history)
    response = gemini_chat.send_message(data.chat[0].text)

    for each in response.candidates[0].content.parts:
        return each.text, gemini_chat.get_history()

    

@app.post("/chat")
def chat(data: ConversationHistory):
    if (data.llm_history ==None and data.context ):
        message:List[PartUnionDict] = [
                              Part(inline_data=Blob(data=data.context.encode("utf-8"), mime_type="text/markdown")),
                              Part(text=data.chat[0].text)
                              ]
        gemini_chat = client.chats.create(model='gemini-2.0-flash-001', history=data.llm_history)
        
    elif (data.web_search):
        result, history = web_search(data)
        
        return {"bot_message": result, "llm_history": history}
        
    elif data.llm_history:
        message = data.chat[0].text
        gemini_chat = client.chats.create(model='gemini-2.0-flash-001', history=data.llm_history)
    else:
        message = data.chat[0].text
        gemini_chat = client.chats.create(model='gemini-2.0-flash-001')
        
    
    response = gemini_chat.send_message(message)
    
    return {"bot_message": response.text, "llm_history": gemini_chat.get_history(), "orginialmessage":message}

