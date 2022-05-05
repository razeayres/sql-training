-- VIIEW is a temporary table
-- that can be create and used in
-- other SQL code (a saved query)
CREATE VIEW test_view AS (
    SELECT *
    FROM Albuns;
);

-- this is for deleting the VIEW
DROP VIEW IF EXISTS test_view;