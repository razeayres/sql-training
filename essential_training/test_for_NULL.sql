-- this an example of
-- how to use and test
-- for NULL
SELECT *
FROM test -- WHERE a = NULL; -- this is not correct because NULL is not a value, but a condition
WHERE a IS NULL;
-- the correct syntax is using "IS"
-- WHERE a IS NOT NULL; -- this is the opposite of "IS NULL"