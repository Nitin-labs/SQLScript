-- Sorting using ORDER BY clause
SELECT *
FROM citizen_Personal_Details
ORDER BY citizenId ASC;

SELECT *
FROM citizen_Personal_Details
ORDER BY citizenId DESC;

SELECT *
FROM citizen_Personal_Details
ORDER BY fullName ASC;


-- To create an index on table
CREATE UNIQUE INDEX UID_INDEX ON citizen_Personal_Details(aadharId ASC);


-- To show indexes present in the table
SHOW INDEX FROM citizen_Personal_Details;


SHOW TABLES;