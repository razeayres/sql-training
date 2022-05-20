-- this is just to show
-- how to use cursors in
-- SQL would look like
DECLARE myCursor CURSOR FOR
SELECT a,
    b
FROM all_Data
ORDER BY a ASC;

-- imperative
-- paradigm in SQL
OPEN myCursor;

FETCH FIRST
FROM myCursor INTO Var1,
    Var2;

FETCH NEXT
FROM myCursor INTO Var1,
    Var2;