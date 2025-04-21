CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS test_result (
    keyword varchar(30),
    embedding vector(1536)
);
CREATE INDEX IF NOT EXISTS test_result_embedding_index ON test_result USING HNSW (embedding public.vector_ip_ops);
