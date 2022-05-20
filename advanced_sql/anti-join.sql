-- this shows how to
-- perform an anti-join analysis

-- this shows how to do it
-- with joins
SELECT DISTINCT An.Name,
    An.Species
FROM Animals AS An
    LEFT OUTER JOIN Adoptions AS Ad ON Ad.Name = An.Name
    AND Ad.Species = An.Species
WHERE Ad.Name IS NULL;

-- this shows how to do
-- it using NOT EXISTS
-- and a subquery
SELECT Name,
    Species
FROM Animals AS An
WHERE NOT EXISTS (
        SELECT NULL
        FROM Adotpions As Ad
        WHERE Ad.Name = An.Name
            AND Ad.Species = An.Species
    );

-- this shows how to do
-- it using the set
-- operator EXCEPT
SELECT Name,
    Species
FROM Animals
EXCEPT  -- set operators are EXCEPT, UNION and INSERSECT
Select Name,
    Species
FROM Adoptions;