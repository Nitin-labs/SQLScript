CREATE TABLE User_Account(
uname VARCHAR(64) NOT NULL,
email VARCHAR(64) NOT NULL,
upassword VARCHAR(255) NOT NULL,
confirmPassword VARCHAR(255) NOT NULL,

CONSTRAINT checkUName CHECK(uname REGEXP '^[a-zA-Z ]*$' ),
CONSTRAINT checkUEmail CHECK(email Like '%@___.__' ),
CONSTRAINT checkPwd CHECK(upassword REGEXP '^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z].*[a-z].*[a-z]*).{6,}$'),
CONSTRAINT checkConfirmPassword CHECK(upassword=confirmPassword)
);


INSERT INTO `testDB`.`User_Account`
(`uname`, `email`, `upassword`, `confirmPassword`)
VALUES
('Rutvik Aahuza',  'rutvik@stu.us','Rut8@1','Rut8@1'),
('Vasant Govind Patil','vasantgp@mit.us','Vas@234ank1','Vas@234ank1'),
('Debjyoti Roy','debjyotid@hau.us','Deb8965$R3','Deb8965$R3'),
('Kaustav Saha','kaustavs@uox.uk','479S&hak4','479S&hak4'),
('Debobrata Podder','dpodder@icl.uk','dpo#49$P','dpo#49$P'),
('Tarun Minz','tarunm@eth.sw','Minz5682!7','Minz5682!7');
