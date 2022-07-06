-- this shows how to
-- make weighted moving
-- avreages

-- first we create a CTI
-- aggregating the data
-- into a daily dataset
WITH daily_avg_temp AS (
    SELECT date_trunc('day', event_time),
        avg(temp_celsius) AS avg_temp
    FROM location_temp
    GROUP BY date_trunc('day', event_time)
)
SELECT event_date,
    round(avg_temp, 2),
    -- the weights are .5, .333 and .167 for
    -- 1, 2 and 3 days before the current date
    (
        SELECT round(avg_temp, 2) * 0.5
        FROM daily_avg_temp AS dat2
        WHERE date_trunc('day', dat1.event_date) - interval '1' day = date_trunc('day', dat2.event_date)
    ) + (
        SELECT round(avg_temp, 2) * 0.333
        FROM daily_avg_temp AS dat3
        WHERE date_trunc('day', dat1.event_date) - interval '2' day = date_trunc('day', dat3.event_date)
    ) + (
        SELECT round(avg_temp, 2) * 0.167
        FROM daily_avg_temp AS dat4
        WHERE date_trunc('day', dat1.event_date) - interval '3' day = date_trunc('day', dat4.event_date)
    )
FROM daily_avg_temp dat1