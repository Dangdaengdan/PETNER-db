-- PostgreSQL initialization script for PETNER database
-- This script sets up the pgvector extension and basic configurations

-- Create the vector extension (pgvector)
CREATE EXTENSION IF NOT EXISTS vector;

-- Set timezone
SET timezone = 'Asia/Seoul';

-- Create a sample table to verify vector extension works
-- (You can remove this if not needed)
CREATE TABLE IF NOT EXISTS vector_test (
    id SERIAL PRIMARY KEY,
    content TEXT,
    embedding vector(768),  -- Common dimension for embeddings
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create an index for vector similarity search
-- (Only if you plan to use vector operations in the future)
CREATE INDEX IF NOT EXISTS vector_test_embedding_idx 
ON vector_test USING ivfflat (embedding vector_cosine_ops) 
WITH (lists = 100);

-- You can add your application-specific initialization here