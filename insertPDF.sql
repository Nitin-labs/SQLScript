
CREATE TABLE documents (
idx INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
doc_name VARCHAR(50) DEFAULT NULL,
doc_path VARCHAR(200) DEFAULT NULL
);

INSERT INTO `testDB`.`documents`
(`idx`,
`doc_name`,
`doc_path`)
VALUES
(22,
'sample',
LOAD_FILE('/home/aevum050/Downloads/pdf-test.pdf')
);