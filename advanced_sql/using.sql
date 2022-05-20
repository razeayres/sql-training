-- this shows how to
-- use the keyword USING
SELECT a.Id,
    b.FirstName a.LastName
FROM Last_names AS a
    JOIN First_names AS b USING(Id) -- same as "ON a.Id = b.Id"