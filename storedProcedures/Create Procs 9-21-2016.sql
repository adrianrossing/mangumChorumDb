DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `CreateNewEvent`(
	eventName varchar(100), 
	startDateTime datetime, 
	endDateTime datetime, 
	locationID int, 
	notes varchar(255), 
	allowAttendance bit)
BEGIN

	insert into event (eventName) 
    values (eventName);

	SET @ID = LAST_INSERT_ID();

	insert into eventDetail(eventID, startDateTime, endDateTime, locationID, notes, allowAttendance)
	values (@ID, startDateTime, endDateTime, locationID, notes, allowAttendance);
    
    SELECT @ID as 'LAST_INSERT_ID()';
        
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `CreateNewUser`(
	fn varchar(50), 
    ln varchar(50),
    address varchar(255), 
    city varchar(100), 
    state varchar(5), 
    zip varchar(11), 
    email varchar(255),
    cell varchar(45),
    home varchar(45),
    office varchar(45),
	birthdate varchar(100), 
    college varchar(100),
    part int
)
BEGIN
		
	INSERT INTO user(username, email, firstname, lastname)
    values (SUBSTRING_INDEX(email, '@', 1), email, fn, ln);
    
    SET @ID = LAST_INSERT_ID();
   
	INSERT INTO userDemographic (userID, cellPhoneNumber, homePhoneNumber, workPhoneNumber, addressOne, city, state, zipCode)
    values(@ID, cell, home, office, address, city, state, zip);
    
    INSERT INTO userInfo (userID, voicePartID, beginDate, endDate, isChoirMember, college)
    VALUES(@ID, part, '2016-09-01', NULL, 1, college);
   
   
   
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `GetAbsences`(userID int, eventID int, absenceTypeID int, minDateTime DateTime)
BEGIN

	select
		a.absenceID, 
		u.userID, 
		e.eventID,
		t.absenceTypeID, 
		t.description,
		u.firstName,
		u.lastName, 
		e.eventName
	from absence a
	inner join absenceType t
		on a.absenceTypeID = t.absenceTypeID
	inner join event e
		on a.eventID = e.eventID
	inner join eventDetail ed
		on e.eventID = ed.eventID
	inner join user u
		on a.userID = u.userID
	Where ed.allowAttendance = 1
		and a.userID = COALESCE(userID, a.userID)
		and a.eventID = COALESCE(eventID, a.eventID)
		and a.absenceTypeID = COALESCE(absenceTypeID, a.absenceTypeID)
		and ed.endDateTime > COALESCE(minDateTime, NOW());
        
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `GetAllCompleteUsers`()
BEGIN

	select 
		* 
	from user u
	inner join userAuth ua
		on u.userID = ua.userID
	-- inner join userPreference up
	-- 	on u.userID = up.userID
	inner join userDemographic ud 
		on u.userID = ud.userID
	inner join userInfo ui 
		on u.userID = ui.userID
	left join voicePart vp	
		on ui.voicePartID = vp.voicePartID;


END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `GetEvents`(minDateTime datetime, maxDateTime datetime)
BEGIN

	select
		e.eventID, 
		e.eventName, 
		ed.startDateTime, 
		ed.endDateTime, 
		l.name as LocationName
	from event e
	inner join eventDetail ed
		on e.eventID = ed.eventID
	inner join location l
		on ed.locationID = l.locationID
	where ed.endDateTime > COALESCE(minDateTime, NOW())
		and ed.endDateTime <= COALESCE(maxDateTime, ed.endDateTime);
        
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `GetUsersForAttendance`(eventID int)
BEGIN

	SELECT DISTINCT
		u.userId, 
		u.firstName, 
        u.lastName,
        vp.voicePartID,
        vp.description,
        a.absenceID,
        a.absenceTypeID,
        att.attendanceStatusID
    FROM user u
    INNER JOIN userInfo ui
		ON u.userID = ui.userID
	INNER JOIN voicePart vp
		on ui.voicePartID = vp.voicePartID
	LEFT JOIN absence a
		on u.userID = a.userID 
        and a.eventID = eventID
        and a.approved = 1
	LEFT JOIN attendance att
		on u.userID = att.userID
		and att.eventID = eventID
        and att.voided = 0
	WHERE ui.isChoirMember = 1;
    
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `SaveAbsence`(userID int, eventID int, absenceID int)
BEGIN

	insert into absence (userID, eventID, absenceTypeID) 
    values (userID, eventID, absenceID);
		
	SELECT LAST_INSERT_ID();

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `SaveAbsenceAction`(absenceID int, actionID int, enteredByUserID int)
BEGIN    

	if(actionID = 2) then 
		update absence a
		set a.approved = 1
        where a.actionID = actionID;
	end if;
	
	insert into absenceAction (absenceID, actionID, enteredByUserID, enteredDateTime) 
    values (absenceID, actionID, enteredByUserID, NOW());
		
	SELECT LAST_INSERT_ID();

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `SaveAbsenceComment`(absenceID int, comment varchar(255), enteredByUserID int)
BEGIN    
	
	insert into absenceComment (absenceID, comment, enteredByUserID, enteredDateTime) 
    values (absenceID, comment, enteredByUserID, NOW());
		
	SELECT LAST_INSERT_ID();

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`intranetmc_intranet`@`localhost` PROCEDURE `SaveAttendance`(userID int, eventID int, attendanceStatusID int, enteredByUserID int)
BEGIN    

	insert into attendance (userID, eventID, attendanceStatusID, enteredDateTime, enteredByUserID)
	values (userId, eventID, attendanceStatusID, now(), enteredByUserID);

	SELECT LAST_INSERT_ID();

END$$
DELIMITER ;
