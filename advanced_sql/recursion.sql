-- this si to show how
-- to make a recursive query
WITH RECURSIVE REX AS (
    -- this is the anchor query
    SELECT a,
        b,
        FROM table1
    UNION
    -- this is the recursive query
    SELECT c,
        d
    FROM REX -- this calls the WITH table
    WHERE c < 10
)