-- this creates a table
-- with two columns; one
-- is text and the other is integer
-- types
CREATE TABLE test (text_col TEXT int_col INT);

-- this inserts a row in
-- the table
INSERT INTO test
VALUES ('something', -99);

--these are for deleting
-- the table
DROP TABLE test; -- this one deletes right away
-- DROP TABLE IF EXISTS test; -- this one test if the table exists before trying to delete it