SELECT * FROM testDB.citizen_Personal_Details;

-- 1)
SELECT fullName, gender
FROM testDB.citizen_Personal_Details
WHERE citizenId=784131;

-- Duration: 0.00075 sec / 0.0000069 sec

-- 2)
SELECT citizenId, gender
FROM testDB.citizen_Personal_Details
WHERE fullName='Linda Kwai';

-- 0.00081 sec / 0.000011 sec

-- 3)
SELECT *
FROM testDB.citizen_Personal_Details
WHERE citizenId=784131;
-- 0.00093 sec / 0.000020 sec

-- 4)
SELECT *
FROM testDB.citizen_Personal_Details
WHERE fullName='Linda Kwai';

-- 0.00097 sec / 0.000018 sec

-- As per the results seen above it is clear that search operation
-- with primary key gives faster results as compare to a field with
-- non primary key