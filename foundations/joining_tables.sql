-- this is aexample on how to use
-- the JOIN keyword
SELECT FirstName,
    LastName,
    FavoriteDish,
    Dishes.Name -- calling from Dishes table joined
FROM Customers
    JOIN Dishes ON Customers.FavoriteDish = Dishes.DishId;