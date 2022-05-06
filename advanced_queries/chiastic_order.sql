--this is example on how to
-- enforce a JOIN order

-- take this example
SELECT *
FROM Animais AS a
    LEFT OUTER JOIN Adoptions AS ad ON ad.Name = a.Name AND ad.Species = a.Species  -- this execute first
    INNER JOIN Persons AS p ON p.Email = ad.Email -- then this is execute secondly

-- when we apply the
-- chiastic order
SELECT *
FROM Animais AS a
    LEFT OUTER JOIN Adoptions AS ad -- this is execute secondly
        INNER JOIN Persons AS p -- this is execute first
        ON p.Email = ad.Email
    ON ad.Name = a.Name AND ad.Species = a.Species