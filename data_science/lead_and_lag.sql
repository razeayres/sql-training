-- this is to show how to
-- use the statements LAG and LEAD
-- in a timeseries
SELECT dept_iod,
    server_id,
    cpu_utlization,
    LEAD(cpu_utlization) OVER ( -- this gets the next row
        PARTITION BY dept_id
        ORDER BY cpu_utlization DESC
    ) AS lead_example,
    LAG(cpu_utlization, 2) OVER ( -- this gets 2 rows behind
        PARTITION BY dept_id
        ORDER BY cpu_utlization DESC
    ) AS lag_example
FROM v_utlization;