-- this shows how to
-- the current value
-- to a previous one
-- in a timeseries
SELECT event_date,
    avg_temp,
    (
        SELECT avg_temp
        FROM daily_avg_temp AS dat2
        WHERE dat2.event_date = dat1.event_date - interval '1' day -- this is to remove 1 day from current dates
    ) AS avg_temp_past_1day
FROM daily_avg_temp AS dat1