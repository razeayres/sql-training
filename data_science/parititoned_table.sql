-- this shows how to
-- create sliced tables
CREATE TABLE loc_temp PARTITION OF location_temp -- this does not work for sqlite
    FOR VALUES FROM (0) TO (2);