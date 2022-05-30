-- this shows how
-- to use the FILTER clause
SELECT Species,
    Name,
    Color,
    COUNT(*) FILTER (
        WHERE Date = > '2017-01-01'
    ) OVER() AS total -- this is the same as (SELECT COUNT(*) FROM Animals WHERE Date = > '2017-01-01') AS total
FROM Animals
-- WHERE Date = > '2017-01-01' -- this would be required to data make sense with subqueries
ORDER BY Date ASC;