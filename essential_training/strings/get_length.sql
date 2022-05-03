-- this returns the
-- length of a given string
SELECT LENGTH('string');
SELECT Name,
    LENGTH(Name) AS Len
FROM City
ORDER BY Len DESC,
    Name