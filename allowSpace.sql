CREATE TABLE allowSpace(
Sname VARCHAR(255),
CONSTRAINT chSname CHECK(Sname REGEXP '^[a-z]* [A-Z]*$')
);


INSERT INTO `testDB`.`allowSpace`
(`Sname`)
VALUES
('JK Kalyani');


INSERT INTO `testDB`.`allowSpace`
(`Sname`)
VALUES
('Singhania Group');