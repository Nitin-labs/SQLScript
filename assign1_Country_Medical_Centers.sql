USE testDB;
CREATE TABLE Country_Medical_Centers (
  citizenId int NOT NULL,
  medicalCenterId binary(32) NOT NULL,
  stateId binary(32) NOT NULL,
  mName VARCHAR(40) NOT NULL,
  location varchar(255) NOT NULL,
  PRIMARY KEY(medicalCenterId),
  FOREIGN KEY (citizenId) REFERENCES citizen_Personal_Details(citizenId)
);

INSERT INTO `testDB`.`Country_Medical_Centers`
(`citizenId`,
`medicalCenterId`,
`stateId`,
`mName`,
`location`)
VALUES
(234568,
UUID_TO_BIN(UUID()),
UUID_TO_BIN(UUID()),
'Veda',
'Shivaji nagar');


INSERT INTO `testDB`.`Country_Medical_Centers`
(`citizenId`,
`medicalCenterId`,
`stateId`,
`mName`,
`location`)
VALUES
(234568,
UUID_TO_BIN(UUID()),
UUID_TO_BIN(UUID()),
'Durva Clinic',
'JM Road');
