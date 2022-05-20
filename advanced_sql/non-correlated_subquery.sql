-- this is to show a
-- non-correlated subquery
-- that returns the same result
-- independently of the outer
-- query behaviour
SELECT FirstName,
    (
        SELECT avg(Age)
        FROM Students
    ) AS Age
FROM Everyone