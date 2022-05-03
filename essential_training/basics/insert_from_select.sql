-- this adds the rows to test
-- based on the results of the
-- query on Customers
INSERT INTO test (a INT, b TEXT, c TEXT)
SELECT Id,
    FirstName,
    LastName
FROM Customers;