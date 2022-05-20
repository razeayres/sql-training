-- this is to show
-- what are ordered funcs,
-- and how to use it

-- there are three main types:
-- hypothetical set = RANK, DENSE_RANKK, PERCENT_RANK, CUME_DIST
-- inverse dist = PERCENTILE_CONT, PERCENTILE_DIC
-- proprietary = STRING_AGG, GROUP_CONCAT, LISTAGG, MODE

-- its basic syntax is < func > WITHIN GROUP ( ORDER BY < exp > )

SELECT Adoption_Date,
    SUM(Adoption_Fee) AS Total_Fee,
    STRING_AGG(CONCAT(Name, ' the ', Species), ', ') WITHIN GROUP (
        ORDER BY Species,
            Name
    ) AS Adopted_Animals
FROM Adoptions
GROUP BY Adoption_Date
HAVING COUNT(*) > 1;