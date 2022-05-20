-- this is an example
-- on how to use ordered funcs
-- and ranking
WITH Vaccination_Ranking AS (
    SELECT Name,
        Species,
        COUNT(*) AS Num_V
    FROM Vaccinations
    GROUP BY Name,
        Species
)
SELECT Species,
    max(Num_v) AS Max_v,
    min(Num_v) AS Min_v,
    CAST(avg(Num_v) AS DECIMAL(9, 2)) AS Avg_v,
    DENSE_RANK(5) WITHIN GROUP (ORDER BY Num_v DESC ) AS How_Would_X_Rank,
    PERCENT_RANK(5) WITHIN GROUP (ORDER BY Num_v DESC ) AS How_Would_X_Percent,
    PERCENTILE_CONT(0.333) WITHIN GROUP (ORDER BY Num_v DESC ) AS Inverse_Continuous, -- this makes interpolations continuously
    PERCENTILE_DISC(0.333) WITHIN GROUP (ORDER BY Num_v DESC ) AS Inverse_Discrete -- this is a discrete approach, so it gets the nearest value
FROM VAcciation_Ranking
GROUP BY Species;