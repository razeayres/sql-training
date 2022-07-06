-- this shows how to use
-- CTI or the WITH statement
WITH daily_avg_temp AS (
    SELECT date_trunc('day', event_time) AS event_date,
        avg(temp_celcius) AS avg_temp
    FROM location_temp
    GROUP BY date_trunc('day', event_time)
)
SELECT event_date,
    avg_temp
FROM daily_avg_temp