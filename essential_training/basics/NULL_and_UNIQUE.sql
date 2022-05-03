-- this is example to
-- show how NULL are exempt
-- from the UNIQUE contraint
CREATE TABLE test (a TEXT UNIQUE, b TEXT); -- this creates the table

-- this inserts the rows
-- in the table text. Even though
-- the a column receives to NULL, it does
-- not trigger the UNIQUE constraint
INSERT INTO test (a, b) VALUES (NULL, 'some text');
INSERT INTO test (a, b) VALUES (NULL, 'some text');