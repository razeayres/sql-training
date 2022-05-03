-- this is example on how to
-- create a constraint to avoid NULL
-- to be inserted in the table in
-- specific columns
CREATE TABLE test (a INT NOT NULL, b TEXT NOT NULL, c TEXT); -- this creates a table that does not accept "a" or "b" as NULL

INSERT INTO test VALUE (1, 'this', 'that'); -- this works
-- INSERT INTO test (b, c) VALUE ('this', 'that'); -- this fails because it will try to insert NULL in the column a by default
-- INSERT INTO test VALUE (2, NULL, 'that'); -- this fails because it has a NULL on column b
-- INSERT INTO test DEFAULT -- this also fails because it sets NULL to every cell
-- VALUES;