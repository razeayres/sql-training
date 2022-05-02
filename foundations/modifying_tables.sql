-- this are examples on how
-- to modify tables

-- this one uses INSERT clause
INSERT INTO Customers(FirstName, LastName)
VALUES("Raze", "Ayres");

-- this uses UPDATE clause
UPDATE Customers
SET LastName = "Ayzen"
WHERE CustomerId = 1;

-- this uses DELETE clause
DELETE FROM Customers
WHERE CustomerId = 26;