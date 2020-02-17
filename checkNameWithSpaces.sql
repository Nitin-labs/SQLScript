-- Check full name with spaces in it  
CREATE TABLE checkFName(
fullName TEXT(64) NOT NULL,

CONSTRAINT checkFNameSpace CHECK(fullName REGEXP '^[a-zA-Z ]*$' )
);


INSERT INTO `testDB`.`checkFName`
(`fullName`)
VALUES
('Vasant Govind M L');