-- this shows how to
-- change window size
SELECT Species,
    Name,
    Color,
    COUNT(*) OVER(
        PARTITION BY species
        ORDER BY Date ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW -- this dynamically filters the window
    ) AS total
FROM Animals
ORDER BY Date ASC;