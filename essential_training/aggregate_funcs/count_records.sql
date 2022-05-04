-- this shows how to
-- used the aggregate
-- function: count()
SELECT Region,
    COUNT(*)
FROM Country
GROUP BY Region;