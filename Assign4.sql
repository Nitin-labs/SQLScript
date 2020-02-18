USE testDB;

-- Script to count number of males in Citizen Table
SELECT COUNT(GENDER)
FROM citizen_Personal_Details
WHERE gender='male';

-- Script to count number of females in Citizen Table
SELECT COUNT(GENDER)
FROM citizen_Personal_Details
WHERE gender='female';