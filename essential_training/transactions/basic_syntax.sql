-- this shows the basic
-- syntax of transactions

-- these are to create
-- the test table
DROP TABLE IF EXISTS test;
CREATE TABLE test (
    Id INT PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT
);

-- this ensure that all
-- of tese statements
-- work as one
BEGIN TRANSACTION; -- starts the transaction
-- these insert the rows
INSERT INTO test (FirstName, LastName)
VALUES ('Raze', 'Ayes');
INSERT INTO test (FirstName, LastName)
VALUES ('Rodrigo', 'Miranda');
-- this updates one of them
UPDATE test
SET FirstName = 'Roderick'
WHERE LastName = 'Ayes';
-- this is in case
-- anything goes wrong
-- in the transaction
ROLLBACK;
SELECT *
FROM test
END TRANSACTION; -- ends the transaction, sometimes we use COMMIT; here