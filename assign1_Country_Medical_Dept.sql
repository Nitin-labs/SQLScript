CREATE TABLE Country_Medical_Dept(
medicalCenterId BINARY(32) DEFAULT NULL,
medicalDeptId BINARY(32) NOT NULL,
deptName VARCHAR(255),
description VARCHAR(255),
comments VARCHAR(255),
PRIMARY KEY (medicalDeptId),
FOREIGN KEY(medicalCenterId) REFERENCES Country_Medical_Centers(medicalCenterId)
);

INSERT INTO `testDB`.`Country_Medical_Dept`
(`medicalDeptId`,
`deptName`,
`description`,
`comments`)
VALUES
(UUID_TO_BIN(UUID()),
'Dermatology',
'Vitiligo',
'Well equiped');

INSERT INTO `testDB`.`Country_Medical_Dept`
(`medicalDeptId`,
`deptName`,
`description`,
`comments`
)
VALUES
(UUID_TO_BIN(UUID()),
'Anatomy',
'Human Body Structure and Functions',
'Research Lab for histology tissue processing'
);

INSERT INTO `testDB`.`Country_Medical_Dept`
(`medicalDeptId`,
`deptName`,
`description`,
`comments`
)
VALUES
(UUID_TO_BIN(UUID()),
'Physiology',
'Normal fuctions of living organisms',
'Form distribution, form filling for patients'
);

INSERT INTO `testDB`.`Country_Medical_Dept`
(`medicalDeptId`,
`deptName`,
`description`,
`comments`
)
VALUES
(UUID_TO_BIN(UUID()),
'Pathology',
'Effects of disease or injury',
'Autopsy, Surgical Pathology'
);
