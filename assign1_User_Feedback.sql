CREATE TABLE User_Feedback(
fullName TEXT(64) NOT NULL,
organization VARCHAR(64) NOT NULL,
email VARCHAR(64) NOT NULL,
phone VARCHAR(64) NOT NULL,
howDidYouHearAboutUs ENUM('Job Portal', 'Company Website','Emp reference') NOT NULL,
comments TEXT NOT NULL,

CONSTRAINT checkFullName CHECK(fullName REGEXP '^[a-zA-Z ]*$' ),
CONSTRAINT checkOrganization CHECK(organization REGEXP '^[a-zA-Z ]*$' ),
CONSTRAINT checkUFEmail CHECK(email LIKE '%@___.__' ),
CONSTRAINT checkPhone  CHECK(phone REGEXP '(^[0-9]*$)|(^[0-9]*.[\-].[0-9]*$)'AND CHAR_LENGTH(phone)>=10)
);

INSERT INTO `testDB`.`User_Feedback`
(`fullName`,`organization`,`email`,`phone`,`howDidYouHearAboutUs`,`comments`)
VALUES
('Rutvik Aahuza', 'Stanford University', 'rutvik@stu.us','9823457815','Job Portal','Rank 1'),
('Vasant Govind Patil','Massachusetts Institute of Technology','vasantgp@mit.us','23459-45879','Job Portal','Rank 1'),
('Debjyoti Roy','Harvard University','debjyotid@hau.us','8965278364','Company Website','Rank 3'),
('Kaustav Saha','University of Oxford','kaustavs@uox.uk','47911-123456','Emp reference','Rank 4'),
('Debobrata Podder','Imperial College London','dpodder@icl.uk','44785-69832','Emp reference','Rank 9'),
('Tarun Minz','ETH Zurich','tarunm@eth.sw','56823-56664','Company Website','Rank 7');
