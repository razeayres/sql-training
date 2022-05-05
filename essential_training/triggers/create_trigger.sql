-- this is an example on how
-- to use triggers

-- these create the tables
-- that we are going to use in
-- this example
CREATE TABLE Customer (
    Id INT PRIMARY KEY,
    Name TEXT,
    OrderId INT
);
CREATE TABLE Sales (
    Id INT PRIMARY KEY,
    ItemId INT,
    CustomerId INT
);
CREATE TABLE LogTable (
    Id INT PRIMARY KEY,
    CustomerId INT,
    Stamp DATE
);

-- this creates
-- the trigger
CREATE TRIGGER any_trigger_name AFTER INSERT ON Sales
    BEGIN
        -- this will set OrderId in the
        -- Customer table as the Id of the
        -- new row being inserted if the
        -- Customers are the same (in the WHERE clause)
        UPDATE Customer
        SET OrderId = NEW.Id
        WHERE Customer.Id = NEW.CustomerId; -- NEW represents a virtual row in the Sales table

        INSERT INTO LogTable (CustomerId, Stamp) -- this shows how to create a log using TRIGGERs
            VALUES (NEW.CustomerId, DATETIME('now'));
    END;


-- this the operation
-- that will trigger our
-- trigger;

-- this will get the new Id created here
-- automatically by the primary key of the Sales table,
-- and set it as the OrderId in the Customer
-- table for the CustomerId = 2
INSERT INTO Sales (ItemId, CustomerId) VALUES (1, 2);

-- this removes the TRIGGER
DROP TRIGGER IF EXISTS any_trigger_name