-- this shows how to use
-- self join
SELECT A1.Adopter_Email,
    A1.Adoption_Date A1.Name AS Name1,
    A1.Species AS Species1 A2.Name AS Name2,
    A2.Species AS Species2
FROm Adoptions AS A1
    INNER JOIN Adoptions AS A2 ON A1.Adopter_Email = A2.Adopter_Email
    AND A1.Adoption_Date = A2.Adoption_Date
    AND ( -- this is what makes the query works properly
        ( -- this accounts for distinct records even if the order is different
            A1.Name = A2.Name
            AND A1.Species > A2.Species
        )
        OR (
            A1.Name > A2.Name
            AND A1.Species = A2.Species
        )
        OR (
            A1.Name > A2.Name
            AND A1.Species <> A2.Species
        )
    )
ORDER BY A1.Adopter_Email,
    A1.Adoption_Date;