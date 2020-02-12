CREATE TABLE Citizen_Medical_History(
citizenId INT NOT NULL UNIQUE PRIMARY KEY,
medicalCenterId BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
medDeptId BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
dateOfVisit DATE NOT NULL,
causeOfVisit VARCHAR(255) NOT NULL,
comments VARCHAR(255),
prescription BLOB
);

INSERT INTO `testDB`.`Citizen_Medical_History`
(`citizenId`,
`medicalCenterId`,
`medDeptId`,
`dateOfVisit`,
`causeOfVisit`
)
VALUES
(52346,
UUID_TO_BIN(UUID()),
UUID_TO_BIN(UUID()),
'2020-02-03',
'Blood Check Up'
);

INSERT INTO `testDB`.`Citizen_Medical_History`
(`citizenId`,
`medicalCenterId`,
`medDeptId`,
`dateOfVisit`,
`causeOfVisit`
)
VALUES
(42562,
UUID_TO_BIN(UUID()),
UUID_TO_BIN(UUID()),
'2020-01-23',
'BMI'
);