
-- alle Benutzer auf anderen Skin umstellen
delete from kimai_preferences;

insert into kimai_preferences (userID, option, value) 
	select userID, "ui.skin", "ecPool" from kimai_users;
	
-- für alle Benutzer Gehalt von "1" zuweisen - workaround
delete from kimai_rates;

insert into kimai_rates (userID, rate) 
	select userID, 1 from kimai_users;