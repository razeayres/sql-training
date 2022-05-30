-- these are distribution
-- functions examples
WITH average_weights AS(
    SELECT species,
        name,
        CAST (avg(weight) AS DECIMAL(5, 2)) as average_weight
    FROM routine_checkupps
    GROUP BY species,
        name
)
SELECT *,
    PERCENT_RANK() OVER W AS percent_rankl, -- this ranks the values from 0 to 1
    CUME_DIST() OVER W AS cimulative_distribution -- this ranks the values from minimum probability to 1
FROM average_weights
WINDOW W (
    PARTITION BY species
    ORDER BY average_weight
) OVER BY pescies DESC,
average_weight DESC