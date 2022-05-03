-- this show an application
-- of the constraint UNIQUE
CREATE TABLE test (
    a TEXT UNIQUE, -- this makes sure a will only receive unique values
    b TEXT,
    c TEXT
);