create temporary table users (
	id int NOT NULL AUTO_INCREMENT,
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
    section varchar(20), 
    part int,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usersid_UNIQUE` (`id`)
);


insert into users(fn, ln, address, city, state, zip, email, cell, home, office, birthdate, college, section, part) 
values('Sarah','Bassett','1728 Field Ave','St. Paul','MN','55116','sarahlbassett@gmail.com','(630) 881-1010','','','January 15,','St. Olaf','soprano','1')
,('Anna','Biedenbender','1245 Hamline Ave N','St. Paul','MN','55108','anna.biedenbender@gmail.com','(507) 766-1012','','','January 23, 1992','Wisconsin Lutheran College','soprano','2')
,('Meryl','Burman','4723 1st Ave S','Minneapolis','MN','55419','meryl.burman@gmail.com','(515) 240-5960','','(612) 341-4525','May 13, 1985','St. Olaf','soprano','1')
,('Catherine','Erickson','8382 Timberwood Road','Woodbury','MN','55125','ericksoncec@gmail.com','(414) 828-9883','','(763) 592-5535','February 2, 1987','St. Olaf','soprano','2')
,('Megan','Hadley','3349 33rd Ave S','Minneapolis','MN','55406','meganhad@gmail.com','(763) 227-9298','','','July 21, 1987','St. Olaf','soprano','2')
,('Sarah','Hammel','516 University Ave SE #104','Minneapolis','MN','55414','sshammels@gmail.com','(563) 419-4383','','','January 21, 1993','St. Olaf','soprano','2')
,('Erica','Hollom','11300 Stratford Lane','Inver Grove Heights','MN','55077','ericahollom@gmail.com','(612) 481-4500','','(952) 806-9060','December 22, 1976','St. Olaf','soprano','2')
,('Hannah','Janssen','5787 Vine Hill Road','Minnetonka','MN','55345','hannah.r.janssen@gmail.com','(507) 340-5130','','','December 26, 1989','Northwestern College','soprano','2')
,('Katelyn','Larson','5670 Hadley Ave #212','Oakdale','MN','55128','katelyn.ann.larson@gmail.com','(651) 491-4617','','','July 16, 1989','St. Olaf','soprano','2')
,('Deanna','Loken','3934 Welcome Ave N','Robbinsdale','MN','55422','deannaloken@aol.com ','(612) 308-9126','(763) 533-4631','','February 22, 1968','St. Olaf','soprano','1')
,('Karen','Lutgen','3418 Yosemite Ave S','St. Louis Park','MN','55416','lutgenkaren@gmail.com','(612) 802-4429','','','February 28,','St. Olaf','soprano','1')
,('Heather','Nelson','392 Pendryn Hill Curve','Woodbury','MN','55125','heathernelsonmusic@gmail.com','(651) 230-8173','','','February 17, 1979','Luther College','soprano','1')
,('Meredith','Samuelson','1222 Juliet Ave','St. Paul','MN','55105','mas.samuelson@gmail.com','(612) 581-7944','','','February 12,','St. Olaf','soprano','1')
,('Erin','Schmidt','3151 Chowen Ave S, #341','Minneapolis','MN','55416','erinrschmidt@gmail.com','(701) 367-5972','','','December 29, 1991','St. Olaf','soprano','2')
,('Olivia','Snortland','3010 38th Ave S','Minneapolis','MN','55406','olivia.snortland@gmail.com','(701) 866-4445','','(612) 225-6151','March 9, 1992','St. Olaf','soprano','2')
,('Amanda','Balgaard','2200 Fremont Ave S','Minneapolis','MN','55405','acbalgaard@gmail.com','(763) 843-2586','','','April 24, 1990','St. Olaf','alto','2')
,('Alyssa','Boehnlein','2127 Pleasant Ave','Minneapolis','MN','55404','boehnlea@gmail.com','(404) 775-8711','','','October 6, 1992','St. Olaf','alto','2')
,('Kim','Bowman','4604 Minnetonka Blvd','St. Louis Park','MN','55416','kimmojane@aol.com','(612) 281-4444','','','July 31,','St. Olaf','alto','1')
,('Christine','Dold','5719 Goodrich Ave','St. Louis Park','MN','55416','christine.dold@gmail.com','(651) 274-3093','','','April 21, 1986','St. Olaf','alto','1')
,('Jennifer','Dusek','406 Wheeler Street North','St. Paul','MN','55104','bjwdusek@yahoo.com','(202) 494-0792','','','December 7,','St. Olaf','alto','1')
,('Brianna','Haus','3817 Shepherd Hills Circle','Bloomington','MN','55431','briannahaus@gmail.com','(320) 249-5104','','','October 2, ','Concordia College','alto','1')
,('Rosa','Haxton','516 University Ave SE #104','Minneapolis','MN','55414','rosa.haxton@gmail.com','(503) 341-3303','','','September 12, 1992','St. Olaf','alto','2')
,('Angie','Hugo','4528 Bryant Ave S, Apt 1','Minneapolis','MN','55419','angie.hugo@gmail.com','(651) 334-9710','','','March 29, 1985','St. Ben''s','alto','1')
,('Katherine','Jardon','1245 N. Hamline Ave','St. Paul','MN','55108','kjardon6707@gmail.com','(712) 370-6707','','','June 21, ','St. Olaf','alto','1')
,('Martha','Kunau','3800 West 32nd Street','Minneapolis','MN','55416','mkunau@msn.com','(612) 964-5389','(612) 929-5991','','March 30, 1968','St. Olaf','alto','2')
,('Sara','Kunau','3800 West 32nd Street','Minneapolis','MN','55416','sarazimbu@hotmail.com ','(612) 382-2238','(612) 929-5991','','May 5, 1970','St. Olaf','alto','2')
,('Amy','Lohmann','1661 Juno Ave, Apt 1','St. Paul','MN','55116','amyelainelohmann@gmail.com','(507) 581-3791','','','November 12, 1991','St. Olaf','alto','1')
,('Julia','Mann','4800 Folwell Drive','Minneapolis','MN','55406','julia.anderson.mann@gmail.com','(612) 501-2823','','','July 10, 1987','Luther College','alto','2')
,('Damara','O''Malley','1371 Standford Ave','St. Paul','MN','55015','omalley.damara@gmail.com','(507) 649-2341','','(651) 970-2324','January 25, 1983','Luther College','alto','2')
,('Tara','Ritter','3522 Harriet Ave S #201','Minneapolis','MN','55408','tararitter@gmail.com','(218) 831-0763','','','July 16, 1988','St. Olaf','alto','2')
,('Sarah','Tengblad','5440 144th Way NW, Unit 22','Anoka','MN','55303','sarah.tengblad@gmail.com','(763) 210-8199','','(612) 605-7301','October 5, 1987','St. Olaf','alto','2')
,('Melissa','Turcios','4312 16th Ave S','Minneapolis','MN','55407','melissa.ann.turcios@gmail.com','(651) 208-7571','','','September 4, 1983','St. Olaf','alto','1')
,('David','Anderson','301 E Burnsville Pkwy, #120','Burnsville','MN','55337','dhanderson486@gmail.com','(978) 303-7111','','','February 18,','St. Olaf','tenor','1')
,('Alex','Engelsgjerd','6726 4th Ave S','Richfield','MN','55423','atengelsgjerd@gmail.com','(320) 291-2109','','','May 13, 1992','St. John''s University','tenor','1')
,('Tom','Frank','16 E 19th St #208','Minneapolis','MN','55403','tom.s.frank@gmail.com','(952) 994-2172','','','February 13,','St. Olaf','tenor','2')
,('Peter','Haugen','16416 Temple Dr N','Minnetonka','MN','55345','pwhaugen@gmail.com','(612) 219-4151','','','September 5, 1967','St. Olaf','tenor','2')
,('Michael','Jeffrey','239 3rd Ave S, Apt F5','South St. Paul','MN','55075','m.s.jeffr@gmail.com','(574) 527-0140','','','April 22, 1989','St. Olaf','tenor','2')
,('Aaron','Kohrs','234 6th Ave N','Hopkins','MN','55343','kohrsaaron@gmail.com','(847) 702-3541','','','July 6, 1994','St. Olaf','tenor','2')
,('Daniel','Lee','101 10th Street E #','St. Paul','MN','55101','danielthomaslee@gmail.com','(952) 428-9737','','','February 20,','Luther College','tenor','2')
,('Michael','Lenz','9360 Stonebridge Trail N','Stillwater','MN','55082','michaelrlenz@gmail.com','(612) 269-3072','','','January 14, 1988','St. Olaf','tenor','1')
,('Keith','Lutgen','3418 Yosemite Ave S','St. Louis Park','MN','55416','keithlutgen@gmail.com','(612) 323-6140','','(952) 928-8659','October 15, 2014','St. Olaf','tenor','1')
,('Jamie','Marshall','2305 Aldrich Ave S, Apt 3','Minneapolis','MN','55405','jamiemarshall16@gmail.com','(763) 227-6553','','','February 1,','St. Olaf','tenor','1')
,('Scott','Senko','7733 120th Avenue N','Champlin','MN','55316','senksc01@luther.edu','(763) 331-4795','','','September 26, 1992','Luther College','tenor','1')
,('Mark','Tiede','593 139th Lane NW','Andover','MN','55304','pastortiede@stjohnsmpls.org','(763) 486-0693','','','September 22, 1970','St. Olaf','tenor','1')
,('Jocque','Warner','352 East 5th Street','New Richmond','WI','54017','warnerjocque@gmail.com','(715) 410-4874','','','March 13,','St. Olaf','tenor','2')
,('Bryan','Waznik','4770 Centerville Road, Apt 307','White Bear Lake','MN','55127','bryan.waznik@gmail.com','(715) 309-9681','','','January 26, ','Luther College','tenor','2')
,('Christian','Weeks','234 Montrose Place #3','St. Paul','MN','55104','christianmweeks@gmail.com','(507) 829-2167','','','February 19, 1991','St. Olaf','tenor','1')
,('Bryan','Wells','658 Charles Ave','St. Paul','MN','55104','bryan.r.wells@gmail.com','(763) 486-2900','','','June 23, 1990','St. Olaf','tenor','1')
,('Zach','Westermeyer','2414 Clinton Ave F10','Minneapolis','MN','55404','zachwestermeyer@gmail.com','(651) 323-8772','','','November 14, 1993','St. Olaf','tenor','1')
,('Pete','Zvanovec','2405 Cavell Ave S','St. Louis Park','MN','55426','zvanovec@hotmail.com','(651) 398-6327','','(612) 435-0044','March 28,','St. Olaf','tenor','2')
,('Alex','Gerleman','3100 Chestnut St N, Apt 313','Chaska','MN','55318','alexgerleman@hotmail.com','(319) 389-4210','','','March 29, 1993','St. Olaf','baritone','1')
,('Daniel','Greco','2103 Harriet #B2','Minneapolis','MN','55405','dgreco.daniel@gmail.com','(507) 403-9989','','','August 18,','St. Olaf','baritone','1')
,('Mark D.','Henning','6824 East Fish Lake Road','Maple Grove','MN','55369','mark.d.henning@gmail.com','(612) 703-8563','(763) 425-5982','','November 5, 1967','St. Olaf','baritone','1')
,('Matt','Knutson','6859 152nd St W #402','Apple Valley','MN','55124','knutma04@luther.edu','(608) 921-6530','','','October 16, 1992','Luther College','baritone','1')
,('Chris','Nelson','392 Pendryn Hill Curve','Woodbury','MN','55125','cnelson04@gmail.com','(651) 245-0384','','','November 25, 1982','Luther College','baritone','1')
,('Nathan','Oppedahl','6032 Oliver Ave S','Minneapolis','MN','55419','nathan@oppedahl.com','(612) 716-8941','(612) 798-4148','(612) 844-8402','January 16, 2006','St. Olaf','baritone','1')
,('Andrew','Parr','894 St. Clair Ave. Apt 300','St. Paul','MN','55105','parrandr@gmail.com','(732) 829-7333','','','June 28, 1993','St. Olaf','baritone','1')
,('Chris','Paul','3973 Pumice Ln','Eagan','MN','55122','clpaul@paullegal.com','(952) 451-9616','(651) 600-3054','(952) 491-0406','April 6, 1981','St. Olaf','baritone','1')
,('Adrian','Rossing','8570 Magnolia Trail #111','Eden Prairie','MN','55344','adriangrossing@gmail.com','(920) 378-9887','','','September 2, 1991','St. Olaf','baritone','1')
,('Derek','Steinke','2723 Vale Crest Road','Crystal','MN','55422','djsteink@gmail.com','(612) 554-4453','','','November 2, 1989','Concordia College','baritone','1')
,('Michael','Betz','402 University Ave NE','Minneapolis','MN','55413','michaelthomasbetz@gmail.com','(641) 530-1127','','','October 21, 1992','St. Olaf','bass','2')
,('Jordan','Boucher','15505 Lilac Drive','Eden Prairie','MN','55347','jor.boucher@gmail.com','(913) 439-8190','','','October 28, 1990','St. Olaf','bass','2')
,('Adam','Burman','4723 1st Ave S','Minneapolis','MN','55419','admbrmn@gmail.com','(507) 380-9738','','','July 9, 1986','St. Olaf','bass','2')
,('Rudyard','Dyer','2436 Irving Ave S','Minneapolis','MN','55405','rudyard.dyer@gmail.com','(319) 931-2371','','','June 17, 1990','St. Olaf','bass','2')
,('Spencer','Livdahl','7 Villard Court','St. Paul','MN','55116','sleelivdahl@gmail.com','(218) 205-4706','','','March 29, 1992','Concordia College','bass','2')
,('Tom','Phelps','20 6th Street NW #207','Osseo','MN','55369','tomphelps1@live.com','(763) 300-4014','(651) 493-2792','(612) 667-7432','December 15, 1976','St. Olaf','bass','2')
,('Benjamin','Simmons','1928 Emerson Ave S #17','Minneapolis','MN','55403','benjamin.p.simmons@gmail.com','(920) 698-6111','','(612) 259-0324','January 23, 1990','St. Olaf','bass','2');


drop table users;









CALL CreateNewUser('Sarah','Bassett','1728 Field Ave','St. Paul','MN','55116','sarahlbassett@gmail.com','(630) 881-1010','','','January 15,','St. Olaf','soprano','1');
CALL CreateNewUser('Anna','Biedenbender','1245 Hamline Ave N','St. Paul','MN','55108','anna.biedenbender@gmail.com','(507) 766-1012','','','January 23, 1992','Wisconsin Lutheran College','soprano','2');
CALL CreateNewUser('Meryl','Burman','4723 1st Ave S','Minneapolis','MN','55419','meryl.burman@gmail.com','(515) 240-5960','','(612) 341-4525','May 13, 1985','St. Olaf','soprano','1');
CALL CreateNewUser('Catherine','Erickson','8382 Timberwood Road','Woodbury','MN','55125','ericksoncec@gmail.com','(414) 828-9883','','(763) 592-5535','February 2, 1987','St. Olaf','soprano','2');
CALL CreateNewUser('Megan','Hadley','3349 33rd Ave S','Minneapolis','MN','55406','meganhad@gmail.com','(763) 227-9298','','','July 21, 1987','St. Olaf','soprano','2');
CALL CreateNewUser('Sarah','Hammel','516 University Ave SE #104','Minneapolis','MN','55414','sshammels@gmail.com','(563) 419-4383','','','January 21, 1993','St. Olaf','soprano','2');
CALL CreateNewUser('Erica','Hollom','11300 Stratford Lane','Inver Grove Heights','MN','55077','ericahollom@gmail.com','(612) 481-4500','','(952) 806-9060','December 22, 1976','St. Olaf','soprano','2');
CALL CreateNewUser('Hannah','Janssen','5787 Vine Hill Road','Minnetonka','MN','55345','hannah.r.janssen@gmail.com','(507) 340-5130','','','December 26, 1989','Northwestern College','soprano','2');
CALL CreateNewUser('Katelyn','Larson','5670 Hadley Ave #212','Oakdale','MN','55128','katelyn.ann.larson@gmail.com','(651) 491-4617','','','July 16, 1989','St. Olaf','soprano','2');
CALL CreateNewUser('Deanna','Loken','3934 Welcome Ave N','Robbinsdale','MN','55422','deannaloken@aol.com ','(612) 308-9126','(763) 533-4631','','February 22, 1968','St. Olaf','soprano','1');
CALL CreateNewUser('Karen','Lutgen','3418 Yosemite Ave S','St. Louis Park','MN','55416','lutgenkaren@gmail.com','(612) 802-4429','','','February 28,','St. Olaf','soprano','1');
CALL CreateNewUser('Heather','Nelson','392 Pendryn Hill Curve','Woodbury','MN','55125','heathernelsonmusic@gmail.com','(651) 230-8173','','','February 17, 1979','Luther College','soprano','1');
CALL CreateNewUser('Meredith','Samuelson','1222 Juliet Ave','St. Paul','MN','55105','mas.samuelson@gmail.com','(612) 581-7944','','','February 12,','St. Olaf','soprano','1');
CALL CreateNewUser('Erin','Schmidt','3151 Chowen Ave S, #341','Minneapolis','MN','55416','erinrschmidt@gmail.com','(701) 367-5972','','','December 29, 1991','St. Olaf','soprano','2');
CALL CreateNewUser('Olivia','Snortland','3010 38th Ave S','Minneapolis','MN','55406','olivia.snortland@gmail.com','(701) 866-4445','','(612) 225-6151','March 9, 1992','St. Olaf','soprano','2');
CALL CreateNewUser('Amanda','Balgaard','2200 Fremont Ave S','Minneapolis','MN','55405','acbalgaard@gmail.com','(763) 843-2586','','','April 24, 1990','St. Olaf','alto','2');
CALL CreateNewUser('Alyssa','Boehnlein','2127 Pleasant Ave','Minneapolis','MN','55404','boehnlea@gmail.com','(404) 775-8711','','','October 6, 1992','St. Olaf','alto','2');
CALL CreateNewUser('Kim','Bowman','4604 Minnetonka Blvd','St. Louis Park','MN','55416','kimmojane@aol.com','(612) 281-4444','','','July 31,','St. Olaf','alto','1');
CALL CreateNewUser('Christine','Dold','5719 Goodrich Ave','St. Louis Park','MN','55416','christine.dold@gmail.com','(651) 274-3093','','','April 21, 1986','St. Olaf','alto','1');
CALL CreateNewUser('Jennifer','Dusek','406 Wheeler Street North','St. Paul','MN','55104','bjwdusek@yahoo.com','(202) 494-0792','','','December 7,','St. Olaf','alto','1');
CALL CreateNewUser('Brianna','Haus','3817 Shepherd Hills Circle','Bloomington','MN','55431','briannahaus@gmail.com','(320) 249-5104','','','October 2, ','Concordia College','alto','1');
CALL CreateNewUser('Rosa','Haxton','516 University Ave SE #104','Minneapolis','MN','55414','rosa.haxton@gmail.com','(503) 341-3303','','','September 12, 1992','St. Olaf','alto','2');
CALL CreateNewUser('Angie','Hugo','4528 Bryant Ave S, Apt 1','Minneapolis','MN','55419','angie.hugo@gmail.com','(651) 334-9710','','','March 29, 1985','St. Ben''s','alto','1');
CALL CreateNewUser('Katherine','Jardon','1245 N. Hamline Ave','St. Paul','MN','55108','kjardon6707@gmail.com','(712) 370-6707','','','June 21, ','St. Olaf','alto','1');
CALL CreateNewUser('Martha','Kunau','3800 West 32nd Street','Minneapolis','MN','55416','mkunau@msn.com','(612) 964-5389','(612) 929-5991','','March 30, 1968','St. Olaf','alto','2');
CALL CreateNewUser('Sara','Kunau','3800 West 32nd Street','Minneapolis','MN','55416','sarazimbu@hotmail.com ','(612) 382-2238','(612) 929-5991','','May 5, 1970','St. Olaf','alto','2');
CALL CreateNewUser('Amy','Lohmann','1661 Juno Ave, Apt 1','St. Paul','MN','55116','amyelainelohmann@gmail.com','(507) 581-3791','','','November 12, 1991','St. Olaf','alto','1');
CALL CreateNewUser('Julia','Mann','4800 Folwell Drive','Minneapolis','MN','55406','julia.anderson.mann@gmail.com','(612) 501-2823','','','July 10, 1987','Luther College','alto','2');
CALL CreateNewUser('Damara','O''Malley','1371 Standford Ave','St. Paul','MN','55015','omalley.damara@gmail.com','(507) 649-2341','','(651) 970-2324','January 25, 1983','Luther College','alto','2');
CALL CreateNewUser('Tara','Ritter','3522 Harriet Ave S #201','Minneapolis','MN','55408','tararitter@gmail.com','(218) 831-0763','','','July 16, 1988','St. Olaf','alto','2');
CALL CreateNewUser('Sarah','Tengblad','5440 144th Way NW, Unit 22','Anoka','MN','55303','sarah.tengblad@gmail.com','(763) 210-8199','','(612) 605-7301','October 5, 1987','St. Olaf','alto','2');
CALL CreateNewUser('Melissa','Turcios','4312 16th Ave S','Minneapolis','MN','55407','melissa.ann.turcios@gmail.com','(651) 208-7571','','','September 4, 1983','St. Olaf','alto','1');
CALL CreateNewUser('David','Anderson','301 E Burnsville Pkwy, #120','Burnsville','MN','55337','dhanderson486@gmail.com','(978) 303-7111','','','February 18,','St. Olaf','tenor','1');
CALL CreateNewUser('Alex','Engelsgjerd','6726 4th Ave S','Richfield','MN','55423','atengelsgjerd@gmail.com','(320) 291-2109','','','May 13, 1992','St. John''s University','tenor','1');
CALL CreateNewUser('Tom','Frank','16 E 19th St #208','Minneapolis','MN','55403','tom.s.frank@gmail.com','(952) 994-2172','','','February 13,','St. Olaf','tenor','2');
CALL CreateNewUser('Peter','Haugen','16416 Temple Dr N','Minnetonka','MN','55345','pwhaugen@gmail.com','(612) 219-4151','','','September 5, 1967','St. Olaf','tenor','2');
CALL CreateNewUser('Michael','Jeffrey','239 3rd Ave S, Apt F5','South St. Paul','MN','55075','m.s.jeffr@gmail.com','(574) 527-0140','','','April 22, 1989','St. Olaf','tenor','2');
CALL CreateNewUser('Aaron','Kohrs','234 6th Ave N','Hopkins','MN','55343','kohrsaaron@gmail.com','(847) 702-3541','','','July 6, 1994','St. Olaf','tenor','2');
CALL CreateNewUser('Daniel','Lee','101 10th Street E #','St. Paul','MN','55101','danielthomaslee@gmail.com','(952) 428-9737','','','February 20,','Luther College','tenor','2');
CALL CreateNewUser('Michael','Lenz','9360 Stonebridge Trail N','Stillwater','MN','55082','michaelrlenz@gmail.com','(612) 269-3072','','','January 14, 1988','St. Olaf','tenor','1');
CALL CreateNewUser('Keith','Lutgen','3418 Yosemite Ave S','St. Louis Park','MN','55416','keithlutgen@gmail.com','(612) 323-6140','','(952) 928-8659','October 15, 2014','St. Olaf','tenor','1');
CALL CreateNewUser('Jamie','Marshall','2305 Aldrich Ave S, Apt 3','Minneapolis','MN','55405','jamiemarshall16@gmail.com','(763) 227-6553','','','February 1,','St. Olaf','tenor','1');
CALL CreateNewUser('Scott','Senko','7733 120th Avenue N','Champlin','MN','55316','senksc01@luther.edu','(763) 331-4795','','','September 26, 1992','Luther College','tenor','1');
CALL CreateNewUser('Mark','Tiede','593 139th Lane NW','Andover','MN','55304','pastortiede@stjohnsmpls.org','(763) 486-0693','','','September 22, 1970','St. Olaf','tenor','1');
CALL CreateNewUser('Jocque','Warner','352 East 5th Street','New Richmond','WI','54017','warnerjocque@gmail.com','(715) 410-4874','','','March 13,','St. Olaf','tenor','2');
CALL CreateNewUser('Bryan','Waznik','4770 Centerville Road, Apt 307','White Bear Lake','MN','55127','bryan.waznik@gmail.com','(715) 309-9681','','','January 26, ','Luther College','tenor','2');
CALL CreateNewUser('Christian','Weeks','234 Montrose Place #3','St. Paul','MN','55104','christianmweeks@gmail.com','(507) 829-2167','','','February 19, 1991','St. Olaf','tenor','1');
CALL CreateNewUser('Bryan','Wells','658 Charles Ave','St. Paul','MN','55104','bryan.r.wells@gmail.com','(763) 486-2900','','','June 23, 1990','St. Olaf','tenor','1');
CALL CreateNewUser('Zach','Westermeyer','2414 Clinton Ave F10','Minneapolis','MN','55404','zachwestermeyer@gmail.com','(651) 323-8772','','','November 14, 1993','St. Olaf','tenor','1');
CALL CreateNewUser('Pete','Zvanovec','2405 Cavell Ave S','St. Louis Park','MN','55426','zvanovec@hotmail.com','(651) 398-6327','','(612) 435-0044','March 28,','St. Olaf','tenor','2');
CALL CreateNewUser('Alex','Gerleman','3100 Chestnut St N, Apt 313','Chaska','MN','55318','alexgerleman@hotmail.com','(319) 389-4210','','','March 29, 1993','St. Olaf','baritone','1');
CALL CreateNewUser('Daniel','Greco','2103 Harriet #B2','Minneapolis','MN','55405','dgreco.daniel@gmail.com','(507) 403-9989','','','August 18,','St. Olaf','baritone','1');
CALL CreateNewUser('Mark D.','Henning','6824 East Fish Lake Road','Maple Grove','MN','55369','mark.d.henning@gmail.com','(612) 703-8563','(763) 425-5982','','November 5, 1967','St. Olaf','baritone','1');
CALL CreateNewUser('Matt','Knutson','6859 152nd St W #402','Apple Valley','MN','55124','knutma04@luther.edu','(608) 921-6530','','','October 16, 1992','Luther College','baritone','1');
CALL CreateNewUser('Chris','Nelson','392 Pendryn Hill Curve','Woodbury','MN','55125','cnelson04@gmail.com','(651) 245-0384','','','November 25, 1982','Luther College','baritone','1');
CALL CreateNewUser('Nathan','Oppedahl','6032 Oliver Ave S','Minneapolis','MN','55419','nathan@oppedahl.com','(612) 716-8941','(612) 798-4148','(612) 844-8402','January 16, 2006','St. Olaf','baritone','1');
CALL CreateNewUser('Andrew','Parr','894 St. Clair Ave. Apt 300','St. Paul','MN','55105','parrandr@gmail.com','(732) 829-7333','','','June 28, 1993','St. Olaf','baritone','1');
CALL CreateNewUser('Chris','Paul','3973 Pumice Ln','Eagan','MN','55122','clpaul@paullegal.com','(952) 451-9616','(651) 600-3054','(952) 491-0406','April 6, 1981','St. Olaf','baritone','1');
#('Adrian','Rossing','8570 Magnolia Trail #111','Eden Prairie','MN','55344','adriangrossing@gmail.com','(920) 378-9887','','','September 2, 1991','St. Olaf','baritone','1');
CALL CreateNewUser('Derek','Steinke','2723 Vale Crest Road','Crystal','MN','55422','djsteink@gmail.com','(612) 554-4453','','','November 2, 1989','Concordia College','baritone','1');
CALL CreateNewUser('Michael','Betz','402 University Ave NE','Minneapolis','MN','55413','michaelthomasbetz@gmail.com','(641) 530-1127','','','October 21, 1992','St. Olaf','bass','2');
CALL CreateNewUser('Jordan','Boucher','15505 Lilac Drive','Eden Prairie','MN','55347','jor.boucher@gmail.com','(913) 439-8190','','','October 28, 1990','St. Olaf','bass','2');
CALL CreateNewUser('Adam','Burman','4723 1st Ave S','Minneapolis','MN','55419','admbrmn@gmail.com','(507) 380-9738','','','July 9, 1986','St. Olaf','bass','2');
CALL CreateNewUser('Rudyard','Dyer','2436 Irving Ave S','Minneapolis','MN','55405','rudyard.dyer@gmail.com','(319) 931-2371','','','June 17, 1990','St. Olaf','bass','2');
CALL CreateNewUser('Spencer','Livdahl','7 Villard Court','St. Paul','MN','55116','sleelivdahl@gmail.com','(218) 205-4706','','','March 29, 1992','Concordia College','bass','2');
CALL CreateNewUser('Tom','Phelps','20 6th Street NW #207','Osseo','MN','55369','tomphelps1@live.com','(763) 300-4014','(651) 493-2792','(612) 667-7432','December 15, 1976','St. Olaf','bass','2');
CALL CreateNewUser('Benjamin','Simmons','1928 Emerson Ave S #17','Minneapolis','MN','55403','benjamin.p.simmons@gmail.com','(920) 698-6111','','(612) 259-0324','January 23, 1990','St. Olaf','bass','2');





