""" adding records from turso db to pinecone
records has id, title, chunk text, folder_id
chunk_text has notes content split into chunks
"""


from typing import Dict, List
from dotenv import load_dotenv
from pinecone import Pinecone
import os
from backend.db import conn

from langchain.text_splitter import CharacterTextSplitter

from backend.get import Notes

load_dotenv()


api_key=os.environ["PINECONE_API_KEY"]

# Initialize a Pinecone client with your API key
pc = Pinecone(api_key)

index_name = "notes-index"
if not pc.has_index(index_name):
    pc.create_index_for_model(
        name=index_name,
        cloud="aws",
        region="us-east-1",
        embed={
            "model":"llama-text-embed-v2",
            "field_map":{"text": "chunk_text"}
        }
    )
    
cur = conn.execute("SELECT id, title, text, folder_id FROM notes")

notes:List[tuple] = [(id, title,  text, folder_id)
       for id, title,  text, folder_id in cur.fetchall()] 
text_splitter = CharacterTextSplitter(
    separator = " ",
    chunk_size = 512,
    chunk_overlap  = 20
)
dense_index = pc.Index(index_name)

for note in notes:
    id, title,  text, folder_id = note
    print(title)
    docs = text_splitter.create_documents([text])
    records = []
    for i, doc in enumerate(docs) :
    
        records.append({
            "_id": f"{id}-chunk-{i}",
            "title": title,
            "folder_id": folder_id,
            "chunk_text": doc.page_content
        })
    

    if len(records)==0: continue
    dense_index.upsert_records("notes-namespace", records)
    
