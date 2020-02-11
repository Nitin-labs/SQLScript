-- Table to check mobile no.
  CREATE TABLE checkMobieNo (
  pname VARCHAR(20) NOT NULL,  
  mobNo VARCHAR(15),
	-- CONSTRAINT checkMob CHECK(mobNo LIKE '^[0-9]*$')
--  constraint checkno check(ISNUMERIC(mobNo))
-- CONSTRAINT checkMob CHECK(mobNo NOT LIKE '%[A-z][a-z]%')
 CONSTRAINT checkMob CHECK(mobNo REGEXP '^[0-9]*$' AND CHAR_LENGTH(mobNo)>9)   -- correct way
 );


INSERT INTO `testDB`.`checkMobieNo`
(pname,
mobNo)
VALUES
('David',
'6994558965');
