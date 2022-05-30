-- ROW_NUMBER basically
-- counts the rows in a
-- given order
SELECT *,
    ROW_NUMBER () OVER () AS row_number
FROM Table1