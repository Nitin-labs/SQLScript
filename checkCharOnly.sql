USE testDB;
CREATE TABLE checkCharOnly(
pname VARCHAR(255),
CONSTRAINT checkPname CHECK(pname REGEXP '^[a-z]*[A-Z]*$')
);


INSERT INTO `testDB`.`checkCharOnly`
(`pname`)
VALUES
('akulM');
