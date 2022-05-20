-- this is an example comparing
-- doing a join, and how to do the
-- same using a subquery in a filter

-- 1st example - this uses join
SELECT DISTINCT P.*
FROM Persons AS P
    INNER JOIN Adoptions AS A ON A.Adopter_Email = P.Email;

-- 2nd example - this uses subquery
SELECT *
FROM Persons
WHERE Email IN (
        SELECT Adopter_Email
        FROM Adotions
    );