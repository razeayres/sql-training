-- this is to show how to
-- apply filters on
-- agregated results using
-- the HAVING clause
SELECT a.Title AS Album,
    COUNT(t.Track) AS Tracks
FROM Tracks AS t
    JOIN Albuns AS a ON a.id = t.id
GROUP BY a.id
HAVING Tracks >= 10; -- this WHERE clause is applied on the aggregated results