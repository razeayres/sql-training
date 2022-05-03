-- this shows how to
-- acquire the type of a number
SELECT TYPEOF(1 + 1); -- this returns integer
SELECT TYPEOF(1 + 1.0); -- this returns real
SELECT TYPEOF('string'); -- this returns text

SELECT TYPEOF('this' + 'string'); -- this returns integer <- this is system-specific