CREATE TABLE MeetingRequest(
organizationName VARCHAR(64),
meetingRoomName VARCHAR(64),
meetingOwner VARCHAR(64),
startTime DATETIME,
endTime DATETIME,
CONSTRAINT checkOrganizationName CHECK(organizationName REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkMeetingRoomName CHECK(meetingRoomName REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkMeetingOwner CHECK(meetingOwner REGEXP '^[a-z]* [A-Z]*$'),
CONSTRAINT checkStartTime CHECK(startTime >= SYSDATE()),
CONSTRAINT checkEndTime CHECK(MINUTE(endTime)>=MINUTE(startTime)+15)
);

INSERT INTO `testDB`.`MeetingRequest`
(`organizationName`,
`meetingRoomName`,
`meetingOwner`,
`startTime`,
`endTime`)
VALUES
('Numino Labs',
'Conference Hall',
'Harsh Patil',
'2020-11-05 14:29:36',
'2020-11-05 14:35:36');

INSERT INTO `testDB`.`MeetingRequest`
(`organizationName`,
`meetingRoomName`,
`meetingOwner`,
`startTime`,
`endTime`)
VALUES
('Numino Labs',
'Meeting Room',
'Nitin Swami',
'2020-02-14 10:00:36',
'2020-02-14 10:40:36');

INSERT INTO `testDB`.`MeetingRequest`
(`organizationName`,
`meetingRoomName`,
`meetingOwner`,
`startTime`,
`endTime`)
VALUES
('Numino Labs', 'Director Room', 'Joel Sequeira', '2020-02-18 11:00:00', '2020-02-18 11:30:36'),
('Numino Labs', 'Meeting Room', 'Mayur Sonar', '2020-02-19 17:00:36', '2020-02-19 17:20:36'),
('Numino Labs', 'Conference Room', 'Devesh Nagvekar', '2020-02-21 12:00:36', '2020-02-21 12:30:36'),
('Numino Labs', 'Conference Room', 'Manisha Jagdale', '2020-02-22 10:00:36', '2020-02-22 10:20:36'),
('Numino Labs', 'Conference Room', 'Komal ', '2020-02-22 16:00:36', '2020-02-22 16:40:36');



