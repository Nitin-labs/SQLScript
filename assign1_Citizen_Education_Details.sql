CREATE TABLE Citizen_Education_Details(
citizenId INT UNIQUE NOT NULL,
educationBoard VARCHAR(255) NOT NULL,
educationLevel VARCHAR(255) NOT NULL,
educationSpecialization VARCHAR(255) NOT NULL,
yearOfPassing int NOT NULL,
collegeOrInstitute VARCHAR(255) NOT NULL,

CONSTRAINT checkEducationBoard CHECK(educationBoard REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkEducationLevel CHECK(educationLevel REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkEducationSpecialization CHECK(educationSpecialization REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkYearOfPassing CHECK(yearOfPassing REGEXP '^[0-9]*$' AND CHAR_LENGTH(yearOfPassing)=4),
CONSTRAINT checkCollegeOrInstitute CHECK(collegeOrInstitute REGEXP '^[a-z]* [A-Z]*$')

);

INSERT INTO `testDB`.`Citizen_Education_Details`
(`citizenId`,
`educationBoard`,
`educationLevel`,
`educationSpecialization`,
`yearOfPassing`,
`collegeOrInstitute`)
VALUES
(12356,
'CBSE Board',
'Matriculation Level',
'General Studies',
1968,
'Jk Kalyani');

INSERT INTO `testDB`.`Citizen_Education_Details`
(`citizenId`,
`educationBoard`,
`educationLevel`,
`educationSpecialization`,
`yearOfPassing`,
`collegeOrInstitute`)
VALUES
(12357,
'CBSE Board',
'Matriculation Level',
'General Studies',
1969,
'Bhagat Ahluvalia');



