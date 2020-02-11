CREATE DATABASE testDB;
USE testDB;
-- Table for email pattern constraint check
CREATE TABLE checkMail (
  id VARCHAR(10) NOT NULL,  
  email VARCHAR(40),
  CONSTRAINT checkid CHECK(CHAR_LENGTH(id)>2),
   CONSTRAINT cemail CHECK(email LIKE '%@___.__' )
  );
  

-- Insert to check email constraints 
INSERT INTO `testDB`.`checkMail`
(`id`,
`email`)
VALUES
(123456789,
'Nick@bru.in');


