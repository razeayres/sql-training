-- this is an example on
-- how to use subselect
SELECT i.Name,
    t.Quantity
FROM (
        -- this is where the sub-query
        -- starts
        SELECT InstructorId,
            COUNT(CourseId) AS Quantity
        FROM Classes
        GROUP BY InstructorId
    ) AS t
    JOIN Instructors AS i ON t.InstructorId = i.InstructorId -- then we join the sub-query t with the table Instructors as i
WHERE i.Name = 'John'