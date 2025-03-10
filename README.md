# Introduction

ToDo

# Setup
This is how to set up the service.

## Clone Repo
Clone the GitHub repo
```
https://github.com/SnehaPatil02/CloudyNotes.git
```
## Docker ollama
### Start Docker

```
docker compose up -d 
```

### Download Ollama models 
```
docker compose exec ollama ollama pull all-minilm
docker compose exec ollama ollama pull tinyllama
```
## local Ollama
Pull all-minilm and tinyllama from ollama 
```
ollama pull all-minilm
ollama run tinyllama
```
Run this docker file for local ollama
```
docker compose -f docker-compose-local-ollama.yml up
```

## Setup Database
Connect Database postgres to Docker Compose
```
docker compose exec -it db psql.
```
Enable pgai on your database
```
CREATE EXTENSION IF NOT EXISTS ai CASCADE;
```
### create tables and other setup 
  ```
  CREATE TABLE notes (
    id      SERIAL PRIMARY KEY,
    title   TEXT,
    emoji TEXT,
    text    TEXT
);
```
Load the data from the dataset
```
SELECT ai.create_vectorizer(
     'notes'::regclass,
     destination => 'notes_embeddings',
     embedding => ai.embedding_ollama('all-minilm', 384),
     chunking => ai.chunking_recursive_character_text_splitter('text')
);
```

### add data to tables
```
python addNotes.py
```


## Run Service locally
```
cd backend
uvicorn main:app --reload

```

