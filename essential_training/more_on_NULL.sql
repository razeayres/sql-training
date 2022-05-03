-- this inserts a row with
-- integer, NULL and empty string
INSERT INTO test (a, b, c) VALUE (0, NULL, ''); -- NULL is different from empty string

-- this inserts en empty
-- row with only NULL in
-- all fields of the table
INSERT INTO test DEFAULT
VALUES;