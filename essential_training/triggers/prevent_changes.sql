-- this is example to show
-- how to use TRIGGER to
-- prevent an update

-- this creates tthe
-- test table
CREATE TABLE IF NOT EXISTS test (
    Id INT PRIMARY KEY,
    Item TEXT,
    CustomerId INT,
    TestId INT -- this is the row that will be use for testing
)

-- insert some rows
-- in the test table
INSERT INTO test (Item, CustomerId, TestId) VALUES ('Pencil', 1, 0);

-- this TRIGGER prevents
-- an update that tries to
-- changes the TestId to 1
CREATE TRIGGER update_test BEFORE UPDATE ON test
    BEGIN
        SELECT RAISE(ROLLBACK, 'cannot update "table test"') FROM test -- this roolbacks if the update is inside a transaction and prints a warning
            WHERE testId = 1
    END;

-- this is the main test
-- trying to update TestId
-- tot he value of 1
BEGIN TRANSACTION;
UPDATE test SET TestId = 1;
END TRANSACTION;