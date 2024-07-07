DELIMITER //

CREATE PROCEDURE InsertEvent(IN bookingID INT, IN eventTitle VARCHAR(255), IN eventLocation TEXT, IN eventStart DATETIME, IN eventEnd DATETIME)
BEGIN
    INSERT INTO events (booking_id, title, location, start, end) VALUES (bookingID, eventTitle, eventLocation, eventStart, eventEnd);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE UpdateEvent(IN eventID INT, IN newTitle VARCHAR(255), IN newLocation TEXT, IN newStart DATETIME, IN newEnd DATETIME)
BEGIN
    UPDATE events SET title = newTitle, location = newLocation, start = newStart, end = newEnd WHERE id = eventID;
END //

DELIMITER ;

CREATE TRIGGER InsertIntoCalendar
AFTER INSERT ON events
FOR EACH ROW
BEGIN
    INSERT INTO calendar (title, startdate, enddate, allDay) VALUES (NEW.title, NEW.start, NEW.end, 'false');
END;

CREATE TRIGGER UpdateAccountDetailStatus
AFTER INSERT ON tblweddingbook
FOR EACH ROW
BEGIN
    UPDATE tblaccounts_detail SET status = 'active' WHERE user_id = NEW.user_id;
END;

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
