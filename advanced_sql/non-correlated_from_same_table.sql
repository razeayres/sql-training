-- this is to show how
-- use non-correlated subqueries
-- from the same table
SELECT *,
    (
        -- note that this subquery is non-correlated
        SELECT max(Adoption_fee)
        FROM Adoptions -- although it uses data from the same outer table
    )
FROm Adoptions