use testDB;

CREATE TABLE checkPassword(
upassword VARCHAR(255) NOT NULL,

 CONSTRAINT checkPass CHECK(upassword REGEXP '^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z].*[a-z].*[a-z]*).{6,}$')

 --  '([a-z][A-Z].[0-9]') -- AND CHAR_LENGTH(upassword)>=6)
-- CONSTRAINT checkpasword CHECK(upassword REGEXP'((?=.*\d)(?=.*[A-Z])(?=.*\W))')

);
-- [^a-zA-Z0-9]*')  AND CHAR_LENGTH(upassword)=6)
INSERT INTO `testDB`.`checkPassword`
(`upassword`)
VALUES
('baaW2@aa');
('ddddd1');
('');
('');
('');

