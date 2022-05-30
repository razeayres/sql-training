-- this shows how to make
-- boolean aggregation
SELECT species,
    name,
    checkup_time,
    Heart_rate,
    EVERY (
        -- returns true if everything is true
        Heart_rate >= avg(Heart_rate) OVER (PARTITION BY species, name) AS consistently_at_or_above_average
    )
FROM routine_checkups
ORDER BY species ASC,
    checkup_time ASC;