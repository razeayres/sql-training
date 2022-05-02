-- this is example of how
-- to use the WHERE clause
SELECT FirstName,
    LastName
FROM Customers
WHERE Birthday = '1991-02-09';
-- WHERE FirstName LIKE "R%"; -- FirstName starting with the letter "R" 
-- WHERE Birthday > "1990-01-01" AND Birthday <= "2010-12-31"; -- Birthday between two specific dates