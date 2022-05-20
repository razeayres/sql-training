-- this an example on how to
-- perform a correlated subquery
SELECT LastName,
    FirstName (
        SELECT avg(Age)
        FROM Students
        WHERE Students.Name == Everyone.Name -- <- see here that Everyone table column is called
    )
FROm Everyone