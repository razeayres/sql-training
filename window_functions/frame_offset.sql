-- this shows how make
-- operations using nearby rows
-- inside a moving window
SELECT species,
    name,
    checkup_time,
    weight,
    (
        weight - FIRST_VALUE(weight) OVER (
            PARTITION BY species,
            name
            ORDER BY CAST(checkup_time AS Date) ASC
            RANGE BETWEEN '3 months' PRECEDING AND '1 day' PRECEDING
        )
    ) AS weight_gain_in_3_months
FROM routine_checkups
ORDER BY species ASC,
    name ASC,
    ABS(weight_gain_in_3_months) DESC NULLS LAST;