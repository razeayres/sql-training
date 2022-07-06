-- this is specific for PostgreSQL
-- and shows how to perform linear
-- regressions using SQL code

/* y=mx+b m:slope b:intercept x:input_value y: predicted_value*/
SELECT regr_slope(free_memory, cpu_utlization) AS m,
    regr_intercept(free_memory, cpu_utlization) AS b
FROM utlization
WHERE event_time BETWEEN '2019-03-05' AND '2019-03-06' -- this is to show

-- this shows how
-- to make predictions
SELECT regr_slope(free_memory, cpu_utlization) * 0.65 + regr_intercept(free_memory, cpu_utlization) AS y
FROM utlization
WHERE event_time BETWEEN '2019-03-05' AND '2019-03-06'