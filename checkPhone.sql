CREATE TABLE checkPhone(
ph VARCHAR(64) NOT NULL,

CONSTRAINT checkPh5  CHECK(ph REGEXP '(^[0-9]*$)|(^[0-9]*.[\-].[0-9]*$)')
);


INSERT INTO `testDB`.`checkPhone`
(`ph`)
VALUES
('8888244-242663');
