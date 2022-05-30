-- this utilizes the
-- NTILE clause
SELECT species,
    name,
    admission_date,
    NTILE(10) OVER ( -- divide the series into equal parts of 10 rows each, all absed on the partition
        PARTITION BY species
        ORDER BY admission_date
    ) AS ten_segments
FROM AnimalsORDER BY admission_date ASC: