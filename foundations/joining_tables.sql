-- this is aexample on how to use
-- the JOIN keyword
SELECT FirstName,
    LastName,
    FavoriteDish,
    Dishes.Name -- calling from Dishes table joined
FROM Customers
    JOIN Dishes ON Customers.FavoriteDish = Dishes.DishId; -- or INNER JOIN

    -- this will get all records
    -- from Customers (FirstName,
    -- LastName, FavoriteDish) plus
    -- the Dishes.Name from a INNER JOIN
    LEFT JOIN Dishes ON Customers.FavoriteDish = Dishes.DishId;