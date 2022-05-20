-- this shows how to use the
-- ORDER BY clause while
-- specifying where the NULL
-- will be located
SELECT FirstName,
    LastName
FROM Customers
ORDER BY LastName ASC NULLS LAST;
-- ASC means that will order from A to Z; or DESC for Z to A
-- NULLS LAST makes sure the NULLS will be ordered last