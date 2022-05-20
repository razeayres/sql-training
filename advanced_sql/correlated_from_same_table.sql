-- this is to show how to make
-- a correlated subquery from
-- the same table
SELECT *,
    (
        SELECT max(Adoption_fee)
        FROM Adoptions AS A2
        WHERE A2.Species = A1.Species -- this is what makes the correlation works
    )
FROM Adoptions AS A1 -- to differentiate from inner table