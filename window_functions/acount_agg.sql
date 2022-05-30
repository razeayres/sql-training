-- this shows how to use
-- agg functions in a window
SELECT species,
    COUNT(*) AS Group,
    SUM(COUNT(Name)) OVER() AS Window
FROM Animals
GROUP BY Species