-- this is example
-- on how to use
-- a subselect for searching
SELECT *
FROM Albuns
WHERE Id IN (
        SELECT DISTINCT AlbumId
        FROM Tracks
        WHERE Duration >= 90
    );