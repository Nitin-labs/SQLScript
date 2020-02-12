-- Generate UUID
CREATE TABLE storeUUID (
id binary(16) PRIMARY KEY
);
 
INSERT INTO storeUUID VALUES(
UUID_TO_BIN(UUID())
);

CREATE TABLE users(
id VARCHAR(36) NOT NULL DEFAULT UUID(), 
name VARCHAR(200));

INSERT INTO users VALUES(
uuid(),
'Bulbasaur');

select uuid(); do sleep(2); select uuid();