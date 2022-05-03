-- this is example of how
-- to use the WHERE clause,
 -- which return a boolean
 -- and all records equals TRUE
SELECT FirstName,
    LastName
FROM Customers
WHERE Birthday = '1991-02-09';
-- WHERE FirstName LIKE "R%"; -- FirstName starting with the letter "R" using wildcards
-- WHERE Birthday > "1990-01-01" AND Birthday <= "2010-12-31"; -- Birthday between two specific dates
-- WHERE FirstName IN ('John', 'Clara'); -- this uses the operator IN
-- WHERE FirstName LIKE '__r%' -- containing 'r' as the third letter