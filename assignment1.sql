CREATE TABLE citizen_Personal_Details(
citizenId INT(5) NOT NULL,
fullName VARCHAR(255) NOT NULL,
aadharId BIGINT(16) NOT NULL,
dateOfBirth DATE NOT  NULL,
state VARCHAR(255),
pincode VARCHAR(10),
gender ENUM('male', 'female'),
email VARCHAR(40) NOT NULL,
primaryPhone VARCHAR(15) NOT NULL,
otherPhone VARCHAR(15) NOT NULL,
address VARCHAR(255) NOT NULL,

PRIMARY KEY (citizenId),
CONSTRAINT checkAadhar CHECK(CHAR_LENGTH(aadharId)=16),
CONSTRAINT checkDateOfBirth CHECK(dateOfBirth BETWEEN DATE '1970-01-01' AND DATE '2011-12-08'),
CONSTRAINT checkPincode CHECK(CHAR_LENGTH(pincode)>1),
CONSTRAINT checkEmail CHECK(email LIKE '%@___.__' ),
CONSTRAINT checkPrimaryPhone CHECK(primaryPhone REGEXP '^[0-9]*$' AND CHAR_LENGTH(primaryPhone)>9),
CONSTRAINT checkOtherPhone CHECK(otherPhone REGEXP '^[0-9]*$' AND CHAR_LENGTH(otherPhone)>9)
);


INSERT INTO `testDB`.`citizen_Personal_Details`
(`citizenId`,
`fullName`,
`aadharId`,
`dateOfBirth`,
`state`,
`pincode`,
`gender`,
`email`,
`primaryPhone`,
`otherPhone`,
`address`)
VALUES
(234568,
'Joseph Martin',
5892478956245789,
'1989-12-23',
'Goa',
403110,
'male',
'joseph@bit.in',
'8622867945',
'8626667945',
'Calangute');
