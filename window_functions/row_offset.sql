-- this shows how make
-- operations using nearby rows
SELECT species,
    name,
    checkup_time,
    weight,
    (
        weight - LAG(weight) OVER (
            PARTITION BY species,
            name
            ORDER BY checkup_time ASC
        )
    ) AS weight_gain
FROM routine_checkups
ORDER BY species ASC,
    name ASC,
    checkup_time ASC;