-- this is to show
-- how to used BETWEEN
SELECT u.event_time,
    u.server,
    u.cpu_usage,
    u.free_memory.u.sessions
FROM utlization AS U
WHERE u.event_time
    BETWEEN
        to_timestamp('2019-05-01 00:01:00', 'YYYY-MM-DD hh24:mi:ss')
        AND
        to_timestamp('2019-05-01 00:30:00', 'YYYY-MM-DD hh24:mi:ss');