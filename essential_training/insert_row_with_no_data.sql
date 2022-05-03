-- this creates a test table
-- with three columns
CREATE TABLE IF NOT EXISTS test (
    int_col INT,
    text_col TEXT,
    real_col REAL
);

-- this adds an empty row to it
INSERT INTO test DEFAULT
VALUES;