-- this shows how to
-- set dafault values
CREATE TABLE test (
    a TEXT,
    b TEXT,
    c TEXT DEFAULT 'DefaultValue' -- this changes de default value from NULL to 'DefaultValue'
);