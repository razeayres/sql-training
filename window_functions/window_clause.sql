-- this shows how to
-- give an alias to the
-- window partition
SELECt min(z) OVER W AS Min_Z,
    max(z) OVER W AS Max_Z
FROM Table1
WINDOW W AS (
    PARTITION BY X
    ORDER BY Y ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
);