-- this show how to create
-- a new table in SQL databases
CREATE TABLE Customers (CustomersId INT(6) NOT NULL AUTO_INCREMENT),
FirestName VARCHAR(22) NOT NULL,
LastName VARCHAR(200) NOT NULL,
FavoriteDish INT(6) REFERENCES Dishes(DishId),  -- this creates a Foreign Key
PRIMARY KET(CustomersID)
);