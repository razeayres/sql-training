-- this is and example on
-- how to use LIMIT and OFFSET
SELECT Name,
    Continent,
    Region
FROM Country
WHERE Continent = 'Europe' -- single wquotes are for literal strings, and double quotes are for anything else
ORDER BY Name
LIMIT 5 -- this limits the select for the first five rows, so 1 to 5
OFFSET 5; -- this starts the limit after the first five rows, so 6 to 10