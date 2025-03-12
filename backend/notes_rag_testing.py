# import psycopg
# from pgvector.psycopg import register_vector
# from typing import Optional, List, NamedTuple
# from ollama import Client
# from dataclasses import dataclass

# @dataclass
# class ChunkData:
#     """Represents a chunk of text with its title and content."""
#     title: str
#     chunk: str

# def create_db_connection() -> psycopg.Connection:
#     """Create and return a database connection."""
#     conn = psycopg.connect(
#         "postgres://postgres:postgres@localhost:5432/postgres"
#         # Modify connection string as needed for your setup
#     )
#     register_vector(conn)
#     return conn

# def get_embedding(client: Client, text: str) -> list[float]:
#     """Get embeddings using Ollama's all-minilm model."""
#     response = client.embeddings(model='all-minilm', prompt=text)
#     return response['embedding']

# def get_relevant_chunks(cur: psycopg.Cursor, embedding: list[float], limit: int = 1) -> List[ChunkData]:
#     """
#     Retrieve the most relevant chunks based on vector similarity.
    
#     Args:
#         cur: Database cursor
#         embedding: Query embedding vector
#         limit: Number of chunks to retrieve
    
#     Returns:
#         List of ChunkData objects containing relevant chunks
#     """
#     query = """
#     SELECT title, chunk
#     FROM notes_embeddings 
#     ORDER BY embedding <=> %s::vector
#     LIMIT %s
#     """
    
#     cur.execute(query, (embedding, limit))
#     return [ChunkData(title=row[0], chunk=row[1]) for row in cur.fetchall()]

# def format_context(chunks: List[ChunkData]) -> str:
#     """
#     Format the chunks into a single context string.
    
#     Args:
#         chunks: List of ChunkData objects
    
#     Returns:
#         Formatted context string
#     """
#     return "\n\n".join(f"{chunk.title}:\n{chunk.chunk}" for chunk in chunks)

# def generate_rag_response(query_text: str) -> Optional[str]:
#     """
#     Generate a RAG response using pgai, Ollama embeddings, and database content.
    
#     Args:
#         query_text: The question or query to answer
    
#     Returns:
#         str: The generated response from the LLM
#     """
#     try:
#         # Initialize Ollama client
#         client = Client(host='http://localhost:11434')
        
#         with create_db_connection() as conn:
#             with conn.cursor() as cur:
#                 # Get embeddings for the query using Ollama SDK
#                 query_embedding = get_embedding(client, query_text)
                
#                 # Get relevant chunks
#                 relevant_chunks = get_relevant_chunks(cur, query_embedding)
                
#                 # Format context
#                 context = format_context(relevant_chunks)
                
#                 # Print context for debugging (optional)
#                 print("Context provided to LLM:")
#                 print("------------------------")
#                 print(context)
#                 print("------------------------")
                
#                 # Construct prompt with context
#                 prompt = f"""Question: {query_text}

# Please use the following context to provide an accurate response:

# {context}
# Answer in markdown format only.
# Answer:
# Sure, here's an answer using Markdown format only:"""
                
#                 # Generate response using Ollama SDK
#                 response = client.generate(
#                     model='tinyllama',
#                     prompt=prompt,
#                     stream=False
#                 )
                
#                 return response['response']
                
#     except Exception as e:
#         print(f"Error generating RAG response: {e}")
#         return None

# def main():
#     # Example usage
#     questions = [
#         "what are your Salary expectations?"
#         # "What can I use pgai for?",
#         # "Foremost anarchism leaders",
#         # "When was alphabet A invented"
#     ]
    
#     for question in questions:
#         print("\n" + "="*50)
#         print(f"Question: {question}")
#         print("-"*50)
        
#         response = generate_rag_response(question)
#         if response:
#             print("\nResponse:")
#             print(response)
#         else:
#             print("Failed to generate response")

# if __name__ == "__main__":
#     main()
