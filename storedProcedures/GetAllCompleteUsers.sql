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
	on ui.voicePartID = vp.voicePartID
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
