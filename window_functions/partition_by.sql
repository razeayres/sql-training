-- this shows the basics
-- of PARTITION windows
SELECT Species,
    Name,
    Color,
    COUNT(*) OVER(PARTITION BY species) AS total -- this processes by groups/chunks
FROM Animals
ORDER BY Date ASC;