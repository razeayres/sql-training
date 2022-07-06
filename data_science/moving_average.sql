-- this is to show
-- how to calculate
-- moving averages
SELECT event_time,
    server_id,
    avg(cpu_utlization) OVER (
        ORDER BY event_time ROWS BETWEEN 12 PRECEEDING AND CURRENT ROW -- this makes averages of a 12-records window
    ) AS hourly_cpu_util
FROM utlization