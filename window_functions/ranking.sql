-- this is to show how
-- ranks basically counts
-- the partitions sequentially
WITH all_ranks AS(
    SELECT species,
        name,
        COUNT(*) AS number_of_checkups,
        ROW_NUMBER() OVER W AS row_number,
        RANK() OVER W AS rank, -- this uses the row number directly
        DENSE_RANK() OVER W AS dense_rank -- this avoid gaps
)
FROM routine_checkups
GROUP BY species,
    name 
WINDOW W AS (
    PARTITION BY spcies
    ORDER BY COUNT(*) DESC
)
SELECT *
FROM all_ranks
ORDER BY species AS,
    number_of_checkups DESC;