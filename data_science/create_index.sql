-- this shows how to use
-- CREATE INDEX
CREATE INDEX idx_loc_temp_time_loc ON time_series.location_temp(event_time, location_id);