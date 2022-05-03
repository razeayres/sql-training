-- these are date/time
-- functions
SELECT DATETIME('now'); -- this is returned in the usual format: 2018-03-28 15:32:47
SELECT DATE('now');
SELECT TIME('now');

-- date/times are
-- generally stored as
-- UTC in databases
SELECT DATETIME('now', '+1 day');
SELECT DATETIME('now', '+3 days');
SELECT DATETIME('now', '+1 month');
SELECT DATETIME('now', '+3 hours', '+27 minutes', '-1 day', '+3 years');