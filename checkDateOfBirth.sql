-- Table to check Date Of Birth
CREATE TABLE checkDateOfBirth (
  empName VARCHAR(20),
  DOB DATE NOT NULL,  
  email VARCHAR(40),
  CONSTRAINT checkDob CHECK(DOB BETWEEN DATE '1970-01-01' AND DATE '2011-12-08')   
  );
  
  INSERT INTO `testDB`.`checkDateOfBirth`
(`empName`,
`DOB`,
`email`)
VALUES
('JACK',
'1990-01-26',
'jack@yak.uk');

INSERT INTO `testDB`.`checkDateOfBirth`
(`empName`,
`DOB`,
`email`)
VALUES
('NAYAK',
'1998-2-3',
'nayak@bostin.usa');


