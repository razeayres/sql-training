-- this shows how to
-- use UPPER/LOWER
SELECT 'StRiNg' = 'string'; -- this returns 0 (or false)
SELECT LOWER('StRiNg') = LOWER('string'); -- this returns 1 (or true)
SELECT UPPER('StRiNg') = UPPER('string'); -- this returns 1 (or true)

-- this shows how to
-- use UPPER/LOWER for
-- formatting
SELECT UPPER(Name), LOWER(Name) FROM City