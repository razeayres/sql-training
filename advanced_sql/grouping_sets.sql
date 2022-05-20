-- this is to show how
-- grouping sets work
SELECT COUNT(*) AS Total_Adoptions
FROM Adoptions
GROUP BY GROUPING SETS(
        -- it allows to return yearly and monthly statistics in a single query
        (YEAR(Adoption_Date), MONTH(Adoption_Date)),
        YEAR(Adoption_Date)
    );