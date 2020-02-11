-- Table to check field length = 5
  CREATE TABLE checkLength (
  empId VARCHAR(5) NOT NULL,  
  email VARCHAR(40),
  CONSTRAINT cid CHECK(CHAR_LENGTH(empId)=5) 
  );
  

-- Insert to check length constraints 
INSERT INTO `testDB`.`checkLength`
(`empId`,
`email`)
VALUES
(33345,
'google'); 