-- this is example
-- on how to use the
-- clause EXISTS and
-- a subquery
SELECT *
FROM Everyone AS E
WHERE EXISTS (
        SELECT NULL -- this NULL does not matter; what matter is if it returns rows or not
        FROM Students AS S
        WHERE S.Email = E.Email
    );