-- this is an example on how
-- to alter a table

-- here we create the test table
CREATE TABLE test (
    a TEXT,
    b TEXT,
    c TEXT DEFAULT 'DefaultValue'
);

-- then we add some values.
-- More specifically, three rows
-- with strings
INSERT INTO test (a, b, c) VALUES ('one', 'two', 'three');
INSERT INTO test (a, b, c) VALUES ('five', 'six', 'seven');
INSERT INTO test (a, b, c) VALUES ('eight', 'nine', 'ten');

-- then we add a new columns
ALTER TABLE test ADD d TEXT;
ALTER TABLE test ADD e TEXT DEFAULT 'zero';