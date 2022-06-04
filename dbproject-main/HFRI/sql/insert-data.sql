/* initial data */

-- org
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (1,NULL,'Asnys','Kim',003,39517,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (2,'DM','Datamine Ltd.','Corscot',55,30680,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (3,'IQ','Info-Quest','Valley Edge',30,37369,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (4,'ED','European Dynamics','Basil',39,31806,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (5,'BQ','Byte Computer','Di Loreto',30784,34112,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (6,'NT','Naxtech','Myrtle',1132,39705,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (7,'IST','Information Systems Technology','Oak Valley',56390,33711,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (8,NULL,'Enorasis S.A.','Barnett',50,33086,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (9,'DV','Dataverse Ltd.','Montana',9998,34449,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (10,'IT','Intracom Telecom','Luster',8,32399,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (11,'FRTH','Foundation for Research and Technology Hellas','Cottonwood',562,30269,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (12,'DNCSR','Demokritos National Centre for Scientific Research','Buntson',55907,35270,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (13,'NOA','National Observatory of Athens','Bridge',56,35385,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (14,'NHRF','National Hellenic Research Foundation','Freg',3,34825,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (15,'EF','Eugenides Foundation','Susan',4803,35640,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (16,NULL,'Academy of Athens','Brickson Park',2115,34729,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (17,'ICS','Institute of Computer Science','Loeprich',408,30333,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (18,'CRTH','Centre for Research and Technology Hellas','Granby',231,36890,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (19,'RACTI','Research Academic Computer Technology Institute','Saint Paul',7715,30603,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (20,'BRF','Biomedical Research Foundation','Hollow Ridge',04385,37014,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (21,'NTUA','National Technical University of Athens','Knutson',50,36686,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (22,NULL,'Panteion University','Grover',36,36857,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (23,NULL,'University of Patras','Forest',2550,34238,'Patra');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (24,'AUA','Agricultural University of Athens','High Crossing',492,37004,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (25,'AUT','Aristotle University of Thessaloniki','Fremont',5,38577,'Thessaloniki');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (26,'UWA','University of West Attica','Schmedeman',3805,34490,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (27,'NKUA','National and Kapodistrian University of Athens, Bashirian and Graham','Rowland',794,35086,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (28,NULL,'Uniersity of Piraeus','Hoard',452,36205,'Piraeus');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (29,'ASFA','Athens School of Fine Arts','John Wall',1514,39129,'Athens');
INSERT INTO org(organization_id,abbreviation,organization_name,street,street_number,postal_code,city) VALUES (30,'TUC','Technical University of Crete','Dovetail',5,36734,'Chania');

-- university
INSERT INTO university(organization_id,budget_from_minedu) VALUES (21,186008);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (22,294416);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (23,232070);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (24,110404);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (25,333034);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (26,145891);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (27,411517);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (28,322761);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (29,300453);
INSERT INTO university(organization_id,budget_from_minedu) VALUES (30,208389);

-- research_center
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (11,64769,153432);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (12,72476,762488);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (13,81490,594711);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (14,86000,403214);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (15,20890,968514);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (16,61515,498564);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (17,41828,482761);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (18,58818,464671);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (19,27341,141730);
INSERT INTO research_center(organization_id,budget_from_minedu,budget_from_private_acts) VALUES (20,47753,332199);

-- company
INSERT INTO company(organization_id,equity) VALUES (1,27343450);
INSERT INTO company(organization_id,equity) VALUES (2,659330538);
INSERT INTO company(organization_id,equity) VALUES (3,990186319);
INSERT INTO company(organization_id,equity) VALUES (4,114503196);
INSERT INTO company(organization_id,equity) VALUES (5,18235292);
INSERT INTO company(organization_id,equity) VALUES (6,666495235);
INSERT INTO company(organization_id,equity) VALUES (7,459791162);
INSERT INTO company(organization_id,equity) VALUES (8,961703410);
INSERT INTO company(organization_id,equity) VALUES (9,237412519);
INSERT INTO company(organization_id,equity) VALUES (10,174738163);

-- phone_number
INSERT INTO phone_number(organization_id,p_number) VALUES (1, 2102112928);
INSERT INTO phone_number(organization_id,p_number) VALUES (2, 2102882403);
INSERT INTO phone_number(organization_id,p_number) VALUES (3, 2103252353);
INSERT INTO phone_number(organization_id,p_number) VALUES (4, 2106695932);
INSERT INTO phone_number(organization_id,p_number) VALUES (5, 2101671423);
INSERT INTO phone_number(organization_id,p_number) VALUES (6, 2103007113);
INSERT INTO phone_number(organization_id,p_number) VALUES (7, 2102077665);
INSERT INTO phone_number(organization_id,p_number) VALUES (8, 2107567091);
INSERT INTO phone_number(organization_id,p_number) VALUES (9, 2108654378);
INSERT INTO phone_number(organization_id,p_number) VALUES (10, 2106310410);
INSERT INTO phone_number(organization_id,p_number) VALUES (11, 2104074677);
INSERT INTO phone_number(organization_id,p_number) VALUES (12, 2102598195);
INSERT INTO phone_number(organization_id,p_number) VALUES (13, 2105865171);
INSERT INTO phone_number(organization_id,p_number) VALUES (14, 2104652484);
INSERT INTO phone_number(organization_id,p_number) VALUES (15, 2108157453);
INSERT INTO phone_number(organization_id,p_number) VALUES (16, 2105483167);
INSERT INTO phone_number(organization_id,p_number) VALUES (17, 2106865812);
INSERT INTO phone_number(organization_id,p_number) VALUES (18, 2103762431);
INSERT INTO phone_number(organization_id,p_number) VALUES (19, 2105963805);
INSERT INTO phone_number(organization_id,p_number) VALUES (20, 2108327926);
INSERT INTO phone_number(organization_id,p_number) VALUES (21, 2106073417);
INSERT INTO phone_number(organization_id,p_number) VALUES (22, 2109252957);
INSERT INTO phone_number(organization_id,p_number) VALUES (23, 2613049033);
INSERT INTO phone_number(organization_id,p_number) VALUES (24, 2107201747);
INSERT INTO phone_number(organization_id,p_number) VALUES (25, 2312007871);
INSERT INTO phone_number(organization_id,p_number) VALUES (26, 2109602033);
INSERT INTO phone_number(organization_id,p_number) VALUES (27, 2108281449);
INSERT INTO phone_number(organization_id,p_number) VALUES (28, 2108046733);
INSERT INTO phone_number(organization_id,p_number) VALUES (29, 2109955702);
INSERT INTO phone_number(organization_id,p_number) VALUES (30, 2821244181);
INSERT INTO phone_number(organization_id,p_number) VALUES (1, 2108069269);
INSERT INTO phone_number(organization_id,p_number) VALUES (2, 2102103451);
INSERT INTO phone_number(organization_id,p_number) VALUES (3, 2106922667);
INSERT INTO phone_number(organization_id,p_number) VALUES (4, 2107589742);
INSERT INTO phone_number(organization_id,p_number) VALUES (5, 2102876005);
INSERT INTO phone_number(organization_id,p_number) VALUES (6, 2103013553);
INSERT INTO phone_number(organization_id,p_number) VALUES (7, 2101263455);
INSERT INTO phone_number(organization_id,p_number) VALUES (8, 2108687810);
INSERT INTO phone_number(organization_id,p_number) VALUES (9, 2102860391);
INSERT INTO phone_number(organization_id,p_number) VALUES (10, 2103720220);
INSERT INTO phone_number(organization_id,p_number) VALUES (11, 2104106152);
INSERT INTO phone_number(organization_id,p_number) VALUES (12, 2104675620);
INSERT INTO phone_number(organization_id,p_number) VALUES (13, 2108401803);
INSERT INTO phone_number(organization_id,p_number) VALUES (14, 2106119581);
INSERT INTO phone_number(organization_id,p_number) VALUES (15, 2107675249);
INSERT INTO phone_number(organization_id,p_number) VALUES (16, 2109604189);
INSERT INTO phone_number(organization_id,p_number) VALUES (17, 2101838430);
INSERT INTO phone_number(organization_id,p_number) VALUES (18, 2109466847);
INSERT INTO phone_number(organization_id,p_number) VALUES (19, 2106288914);

-- scientific_field
INSERT INTO scientific_field(scientific_field_name) VALUES ('Computer Science');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Pure Mathematics');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Molecular Physics');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Astronomy');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Applied Mathematics');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Statistics and Probability');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Machine Learning');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Organic Chemistry');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Artificial Intelligence');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Control Theory');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Biology');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Neuroscience');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Economics');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Psychology');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Social Science');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Languages and Literature');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Arts');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Philosophy');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Medicine');
INSERT INTO scientific_field(scientific_field_name) VALUES ('Aerospace Engineering');

-- researcher
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (1,'Zoi','Ronda','Female','1962-09-28 13:18:56','2016-04-14 07:14:54',6);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (2,'Nana','Pepoti','Female','1993-07-14 03:36:14','2010-06-13 00:38:41',24);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (3,'Yannis','Pulelis','Male','1965-01-08 13:15:55','2020-11-16 05:14:44',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (4,'Georgios','Scafidatos','Male','1967-01-02 17:48:09','2005-07-29 19:45:31',15);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (5,'Karolos','Romanakis','Male','1981-12-08 05:07:46','2006-05-09 12:30:15',8);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (6,'Xene','Vascopoulou','Female','1974-09-12 21:25:38','2015-06-04 00:53:40',4);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (7,'Evdokia','Leventiade','Female','1982-12-31 13:37:38','2001-08-18 17:32:51',20);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (8,'Antonios','Sideroglou','Male','1963-01-03 14:11:20','2006-07-12 14:37:43',10);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (9,'Dimosthenis','Frangatos','Bigender','1986-07-28 04:34:02','2007-04-12 10:56:35',7);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (10,'Giorgos','Nassalis','Male','1984-10-26 17:11:56','2005-10-08 19:30:08',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (11,'Manos','Maropoulos','Male','1991-04-19 08:35:06','2016-02-01 06:03:16',22);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (12,'Ninia','Michaelou','Female','1966-02-27 17:19:26','2014-03-20 08:03:33',23);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (13,'Katia','Salakou','Female','1991-06-16 23:29:13','2018-02-01 15:23:14',21);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (14,'Anna','Geroli','Polygender','1964-02-04 11:46:34','2022-02-25 00:45:19',10);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (15,'Stefanos','Bureas','Male','1986-07-19 14:14:41','2000-08-03 13:45:00',28);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (16,'Fani','Christiadi','Female','1996-05-28 16:44:32','2002-02-02 05:01:00',4);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (17,'Liza','Panea','Female','1995-10-11 22:57:44','2013-04-25 12:08:57',17);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (18,'Emmanouil','Georgiades','Male','1972-07-17 19:54:50','2002-12-11 06:21:42',6);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (19,'Stefanos','Argyratos','Male','1990-02-23 17:31:40','2002-05-16 20:50:08',16);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (20,'Dimitrios','Petrou','Male','1985-12-16 02:26:05','2004-04-25 06:18:19',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (21,'Efthimios','Nicolallis','Male','1993-04-22 16:00:51','2013-12-19 05:29:12',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (22,'Paris','Sperilis','Male','1993-12-28 14:34:13','2007-10-10 13:02:19',17);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (23,'Tasos','Demakis','Male','1974-04-08 08:22:08','2007-06-16 06:25:14',24);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (24,'Yannis','Logou','Male','1962-09-24 22:32:46','2018-08-12 14:09:37',25);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (25,'Diamantina','Lampropoulou','Female','1993-12-28 17:44:38','2011-06-16 04:52:37',18);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (26,'Marina','Palaioli','Female','1973-03-10 02:17:01','2021-01-26 03:34:46',24);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (27,'Stephanos','Terzou','Male','1990-06-17 01:50:15','2017-02-28 19:39:53',26);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (28,'Alkis','Christodoulelis','Male','1974-03-13 00:30:36','2020-04-21 06:44:32',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (29,'Dimitris','Demilis','Male','1996-06-24 08:57:52','2018-01-20 14:37:01',2);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (30,'Giorgos','Perrelis','Male','1985-10-16 00:22:01','2015-06-23 03:28:01',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (31,'Zacharias','Romanou','Male','1975-01-11 23:13:23','2015-09-15 15:43:02',3);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (32,'Spyridoula','Leventili','Female','1963-04-05 09:32:20','2010-07-16 23:56:32',14);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (33,'Eva','Sotirili','Female','1971-01-04 05:19:54','2021-03-13 18:42:44',9);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (34,'Danai','Siskaki','Female','1963-10-24 01:25:47','2016-07-18 11:41:30',16);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (35,'Aspa','Buride','Female','1989-02-28 08:02:47','2006-04-14 12:14:53',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (36,'Iraklis','Zografatos','Male','1968-09-20 17:29:06','2003-12-12 22:24:28',17);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (37,'Varvara','Economaki','Female','1980-06-27 16:17:25','2016-11-27 22:14:05',26);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (38,'Stergios','Georgakis','Male','1966-06-06 15:26:19','2011-01-26 02:28:34',14);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (39,'Vasilis','Mikatos','Male','1987-09-30 05:43:36','2011-02-12 10:55:46',29);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (40,'Fani','Lazoti','Female','1965-11-12 18:07:30','2003-01-17 06:59:47',28);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (41,'Filio','Sarantelli','Female','1973-09-03 03:58:09','2015-08-07 05:45:00',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (42,'Evi','Kondeli','Female','1997-08-10 11:08:58','2011-09-12 00:15:12',30);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (43,'Paris','Melellis','Male','1984-12-19 06:43:46','2016-08-19 16:18:36',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (44,'Theofanis','Sotirakos','Male','1970-12-16 18:37:05','2004-01-09 12:54:24',8);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (45,'Agisilaos','Rodakos','Male','1973-12-16 06:22:25','2011-07-05 04:57:50',14);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (46,'Michail','Peras','Male','1993-05-05 17:39:35','2010-12-30 22:36:46',6);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (47,'Dimitrios','Rondoulis','Male','1991-06-07 06:41:06','2016-02-24 02:02:59',12);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (48,'Iordanis','Remakis','Male','1970-12-22 16:03:39','2020-11-06 11:27:25',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (49,'Zissis','Panageas','Male','1970-12-29 23:42:31','2002-09-02 02:37:26',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (50,'Tatianna','Sotirouli','Female','1973-12-23 00:04:47','2018-09-19 10:53:05',23);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (51,'Natassa','Matou','Female','1973-12-08 17:02:35','2020-12-20 12:17:19',15);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (52,'Electra','Spiterouli','Female','1978-10-21 22:19:49','2020-03-07 11:19:05',11);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (53,'Magda','Pauleli','Female','1993-10-14 22:58:17','2001-04-09 20:47:22',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (54,'Marinos','Calallis','Male','1988-10-04 01:39:08','2011-10-02 23:54:47',21);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (55,'Iraklis','Gallidis','Male','1998-09-06 12:46:17','2006-09-01 17:59:42',12);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (56,'Flora','Kouratou','Female','1964-08-19 22:06:47','2001-03-07 03:39:32',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (57,'Lisa','Anagnoti','Non-binary','1997-04-02 20:50:14','2005-06-17 22:20:58',28);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (58,'Lazaros','Macreas','Male','1974-10-10 23:57:16','2020-12-15 23:08:40',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (59,'Pericles','Tolellis','Male','1971-09-11 20:50:37','2004-02-07 11:38:34',1);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (60,'Rea','Petroti','Female','1990-01-24 10:59:18','2004-09-27 11:18:16',24);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (61,'Diamanto','Fotidi','Female','1974-10-31 03:17:26','2015-04-18 19:06:10',12);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (62,'Dimos','Artinilis','Male','1972-11-03 20:03:28','2020-03-18 12:26:56',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (63,'Manolis','Ballakos','Male','1974-04-18 16:04:40','2008-11-06 22:37:02',26);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (64,'Spyridoula','Mavratou','Female','1982-05-04 13:38:29','2003-03-01 01:31:29',14);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (65,'Kalomoira','Rellea','Female','1991-12-15 09:19:01','2004-11-04 18:20:31',22);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (66,'Manolis','Papadopoulos','Male','1967-10-13 22:05:05','2020-07-07 14:29:11',30);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (67,'Nikos','Gounaratos','Male','1984-09-23 14:25:33','2011-11-08 15:37:46',12);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (68,'Lia','Vassallili','Female','1972-11-17 01:50:07','2004-09-22 10:57:48',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (69,'Tasos','Giannou','Male','1978-08-08 13:27:44','2019-08-19 01:59:13',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (70,'Andrianna','Antoniou','Female','1981-12-10 19:53:32','2009-10-29 14:03:32',9);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (71,'Ourania','Zannaki','Female','1993-06-14 01:19:27','2008-02-03 14:59:28',22);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (72,'Appolon','Barberidis','Male','1996-06-07 00:38:56','2016-08-19 06:59:01',24);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (73,'Makis','Vlachou','Male','1979-09-06 12:30:30','2008-10-19 08:23:23',7);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (74,'Panagiota','Kalloti','Female','1997-02-12 21:45:33','2018-11-21 10:35:26',20);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (75,'Ninia','Zappakou','Polygender','1995-05-20 11:56:46','2008-02-06 09:07:46',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (76,'Hermione','Sotirou','Female','1985-03-27 14:50:48','2009-06-22 15:32:17',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (77,'Irida','Agnoti','Female','1997-04-10 21:24:24','2013-11-09 10:03:42',4);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (78,'Pennie','Robillard','Male','1967-10-20 09:00:47','2009-02-24 00:37:35',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (79,'Thanasis','Vidaleas','Male','1981-01-25 00:38:42','2015-08-05 15:12:37',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (80,'Dimitrios','Xenoulis','Male','1972-03-08 11:49:26','2011-07-27 22:33:46',22);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (81,'Garifallia','Koskide','Female','1986-10-25 19:42:38','2021-09-14 16:47:38',3);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (82,'Spyros','Ganides','Male','1981-03-28 21:33:19','2016-01-13 19:25:17',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (83,'Stamatia','Franga','Female','1994-03-09 01:53:02','2018-06-15 08:51:14',1);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (84,'Keti','Xenou','Female','1986-11-02 11:14:18','2012-02-18 10:34:37',23);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (85,'Vasso','Kormeli','Female','1966-07-13 10:21:22','2013-01-24 01:58:55',2);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (86,'Kyriake','Stathidi','Female','1976-09-22 18:25:06','2016-02-10 03:44:14',21);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (87,'Aggeliki','Condiadi','Female','1975-01-04 02:18:21','2006-07-23 09:54:25',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (88,'Emilios','Apostoliadis','Male','1980-07-27 11:47:03','2003-01-11 17:06:06',21);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (89,'Evangelos','Stavras','Male','1991-04-25 07:04:25','2021-08-05 01:27:14',28);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (90,'Elli','Laskarakou','Genderqueer','1990-12-31 14:04:59','2008-06-07 12:39:01',13);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (91,'Callirhoe','Raptidi','Female','1966-03-15 20:08:35','2011-03-19 17:19:18',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (92,'Persefoni','Leventaiou','Female','1997-07-16 14:56:09','2007-05-23 22:00:39',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (93,'Andreas','Burou','Male','1972-09-17 07:07:40','2001-08-07 00:39:42',12);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (94,'Giannis','Stamotis','Male','1981-11-27 16:17:58','2016-05-30 23:08:13',5);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (95,'Iakovos','Mikelis','Male','1986-06-26 06:07:41','2002-01-25 00:24:21',27);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (96,'Giannis','Marakos','Male','1980-12-13 05:32:12','2001-01-09 05:09:09',19);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (97,'Foivi','Lampra','Female','1991-01-08 00:07:53','2022-03-24 05:40:17',2);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (98,'Theodoros','Mellelis','Male','1987-11-06 03:48:04','2019-02-04 02:36:39',4);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (99,'Mideia','Apostoliadi','Female','1995-03-12 00:30:22','2005-02-21 22:39:43',25);
INSERT INTO researcher(researcher_id,first_name,last_name,sex,date_of_birth,start_date,organization_id) VALUES (100,'Christina','Georgouli','Female','1976-07-20 08:51:43','2015-09-19 04:28:09',13);

-- executive
INSERT INTO executive(executive_id,executive_name) VALUES (1,'Thiseas Condoulis');
INSERT INTO executive(executive_id,executive_name) VALUES (2,'Gerasimos Vidalas');
INSERT INTO executive(executive_id,executive_name) VALUES (3,'Zissis Vasillidis');
INSERT INTO executive(executive_id,executive_name) VALUES (4,'Vlasis Politoulis');
INSERT INTO executive(executive_id,executive_name) VALUES (5,'Prokopos Kallopoulos');
INSERT INTO executive(executive_id,executive_name) VALUES (6,'Thanos Sarrakos');
INSERT INTO executive(executive_id,executive_name) VALUES (7,'Valentinos Andreallidis');
INSERT INTO executive(executive_id,executive_name) VALUES (8,'Chryssa Markoli');
INSERT INTO executive(executive_id,executive_name) VALUES (9,'Athanasia Mavriade');
INSERT INTO executive(executive_id,executive_name) VALUES (10,'Panagiotis Condakos');

-- program
INSERT INTO program(program_id,program_name,department) VALUES (1,'nisl','Marketing');
INSERT INTO program(program_id,program_name,department) VALUES (2,'curae','Marketing');
INSERT INTO program(program_id,program_name,department) VALUES (3,'faucibus','Business Development');
INSERT INTO program(program_id,program_name,department) VALUES (4,'magna','Sales');
INSERT INTO program(program_id,program_name,department) VALUES (5,'velit','Support');
INSERT INTO program(program_id,program_name,department) VALUES (6,'aenean','Sales');
INSERT INTO program(program_id,program_name,department) VALUES (7,'ultrices','Product Management');
INSERT INTO program(program_id,program_name,department) VALUES (8,'tristique','Accounting');
INSERT INTO program(program_id,program_name,department) VALUES (9,'est','Business Development');
INSERT INTO program(program_id,program_name,department) VALUES (10,'semper','Services');
INSERT INTO program(program_id,program_name,department) VALUES (11,'nibh','Engineering');
INSERT INTO program(program_id,program_name,department) VALUES (12,'diam','Support');
INSERT INTO program(program_id,program_name,department) VALUES (13,'eu','Research and Development');
INSERT INTO program(program_id,program_name,department) VALUES (14,'nulla','Accounting');
INSERT INTO program(program_id,program_name,department) VALUES (15,'congue','Human Resources');
INSERT INTO program(program_id,program_name,department) VALUES (16,'odio','Marketing');
INSERT INTO program(program_id,program_name,department) VALUES (17,'at','Accounting');
INSERT INTO program(program_id,program_name,department) VALUES (18,'leo','Support');
INSERT INTO program(program_id,program_name,department) VALUES (19,'nulla','Support');
INSERT INTO program(program_id,program_name,department) VALUES (20,'est','Support');
INSERT INTO program(program_id,program_name,department) VALUES (21,'sed','Services');
INSERT INTO program(program_id,program_name,department) VALUES (22,'quam','Product Management');
INSERT INTO program(program_id,program_name,department) VALUES (23,'dapibus','Marketing');
INSERT INTO program(program_id,program_name,department) VALUES (24,'in','Research and Development');
INSERT INTO program(program_id,program_name,department) VALUES (25,'pede','Support');
INSERT INTO program(program_id,program_name,department) VALUES (26,'sapien','Engineering');
INSERT INTO program(program_id,program_name,department) VALUES (27,'eu','Engineering');
INSERT INTO program(program_id,program_name,department) VALUES (28,'rutrum','Human Resources');
INSERT INTO program(program_id,program_name,department) VALUES (29,'elit','Sales');
INSERT INTO program(program_id,program_name,department) VALUES (30,'sapien','Human Resources');

-- project
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (1,'Enhanced solution-oriented benchmark','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',166855,'2018-07-04 20:38:31','2022-03-31 02:03:18',67,'2018-04-06 14:21:35',7,36,14,7,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (2,'Future-proofed actuating protocol','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',135537,'2021-07-02 21:07:22','2025-04-29 17:44:47',77,'2020-03-24 00:38:18',23,70,18,10,23);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (3,'Optimized bi-directional superstructure','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',442435,'2021-10-30 23:03:13','2024-04-13 22:17:43',61,'2020-07-13 06:44:48',3,56,83,10,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (4,'Triple-buffered system-worthy alliance','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.',553137,'2019-08-27 20:44:54','2022-09-23 21:47:54',64,'2019-03-19 19:32:52',21,52,38,9,1);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (5,'Robust systematic hub','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',470783,'2022-09-22 20:54:35','2024-04-20 14:34:42',93,'2019-09-02 04:07:37',7,71,40,8,30);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (6,'Networked multimedia info-mediaries','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',563034,'2021-10-13 07:27:53','2023-08-31 22:55:34',69,'2019-07-09 12:17:16',16,5,26,9,16);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (7,'Universal grid-enabled orchestration','Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.',312304,'2018-06-01 23:55:32','2021-07-24 17:10:52',64,'2017-01-11 21:39:52',21,69,57,5,11);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (8,'Horizontal responsive challenge','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',403284,'2018-02-20 02:40:02','2021-06-23 15:22:53',91,'2015-08-13 10:37:34',26,1,53,1,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (9,'Visionary stable hardware','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',782894,'2020-10-04 10:46:45','2023-02-10 17:48:39',94,'2015-11-03 05:49:14',19,91,94,9,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (10,'Reactive analyzing focus group','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.',896957,'2021-07-21 04:46:42','2024-09-27 09:24:33',87,'2019-05-19 03:45:51',28,20,50,7,8);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (11,'Profound mission-critical migration','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',452358,'2021-12-06 01:31:17','2024-10-23 06:59:36',90,'2020-06-08 05:13:59',21,10,46,4,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (12,'Future-proofed actuating groupware','In congue. Etiam justo. Etiam pretium iaculis justo.',634613,'2017-03-15 14:24:35','2020-04-25 08:31:05',63,'2016-04-14 06:45:48',21,35,83,8,19);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (13,'Team-oriented background hardware','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.',389000,'2020-12-29 12:18:05','2023-05-30 22:37:12',61,'2019-04-11 17:17:24',18,92,27,8,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (14,'Streamlined 24/7 Graphical User Interface','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',299358,'2018-12-30 15:58:04','2021-10-30 07:08:31',72,'2016-01-31 00:32:10',27,26,74,1,7);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (15,'Triple-buffered maximized protocol','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',744597,'2021-10-12 02:25:59','2024-12-15 00:04:52',71,'2018-05-18 06:02:00',10,92,29,7,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (16,'Public-key asynchronous solution','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',884516,'2022-07-31 19:37:34','2026-09-23 07:23:44',71,'2020-01-17 03:55:44',4,84,60,4,16);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (17,'Seamless composite pricing structure','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',194038,'2021-10-25 02:08:58','2024-09-22 00:33:52',84,'2018-12-28 20:46:55',29,78,93,2,23);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (18,'Phased multi-tasking methodology','Fusce consequat. Nulla nisl. Nunc nisl.',444496,'2020-09-02 21:34:00','2023-06-30 00:23:38',61,'2017-07-28 08:00:14',3,79,96,1,20);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (19,'Reduced responsive frame','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',443715,'2021-05-23 10:04:21','2024-06-16 23:45:26',97,'2018-04-07 14:49:55',7,46,99,5,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (20,'Re-engineered encompassing framework','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',977154,'2020-10-10 18:04:13','2023-01-10 17:50:38',83,'2018-06-27 19:49:34',16,81,65,8,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (21,'Virtual 24 hour installation','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',699007,'2022-04-20 17:45:32','2025-07-02 09:10:48',92,'2016-04-21 21:41:20',29,73,11,8,12);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (22,'Monitored didactic access','Phasellus in felis. Donec semper sapien a libero. Nam dui.',954188,'2021-04-21 19:04:57','2025-06-21 13:45:10',88,'2020-10-22 13:52:48',2,23,74,5,1);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (23,'Front-line local core','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.',115215,'2021-07-13 01:20:44','2024-01-04 23:06:23',90,'2016-01-14 18:02:36',29,92,9,1,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (24,'Visionary 4th generation superstructure','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',899455,'2021-08-14 02:59:54','2024-12-19 09:21:50',93,'2019-03-24 05:27:22',27,75,98,1,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (25,'Innovative multi-tasking workforce','Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.',252342,'2021-09-12 22:44:55','2022-12-29 06:09:32',63,'2016-03-20 13:50:48',3,28,64,3,18);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (26,'Ameliorated solution-oriented capability','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',833853,'2021-02-27 09:46:49','2024-03-02 05:41:28',75,'2015-09-01 01:53:30',4,36,53,4,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (27,'Expanded coherent pricing structure','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',164266,'2021-11-14 01:29:57','2024-09-25 06:32:40',62,'2017-08-05 20:50:03',10,69,4,9,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (28,'Visionary scalable forecast','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',222160,'2019-05-03 21:25:41','2022-10-16 19:13:30',99,'2017-01-22 08:12:16',5,54,89,1,18);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (29,'Reverse-engineered uniform software','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',255133,'2022-03-04 16:37:24','2025-01-11 14:44:59',63,'2017-11-05 01:50:54',3,66,60,1,1);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (30,'Self-enabling incremental superstructure','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',173044,'2021-09-22 13:57:21','2024-07-20 03:51:49',95,'2016-09-20 17:21:36',26,6,75,2,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (31,'Implemented 6th generation instruction set','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',513080,'2020-05-12 23:39:53','2022-10-10 18:52:42',89,'2017-03-13 03:34:44',13,84,51,2,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (32,'Multi-layered national model','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',682530,'2020-02-17 23:30:04','2024-12-01 02:31:51',71,'2018-04-30 06:09:04',10,70,40,9,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (33,'Enhanced regional local area network','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.',507768,'2021-02-16 11:52:28','2025-08-23 14:19:44',93,'2017-03-16 03:44:30',19,100,99,2,21);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (34,'Implemented bottom-line help-desk','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',276737,'2020-03-12 22:51:02','2023-10-26 18:57:20',88,'2017-02-17 23:01:05',3,27,10,9,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (35,'Down-sized dedicated standardization','Phasellus in felis. Donec semper sapien a libero. Nam dui.',151903,'2020-12-25 15:11:44','2024-06-17 21:46:19',85,'2017-05-11 01:40:35',29,68,88,10,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (36,'Programmable multi-tasking Graphic Interface','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.',547120,'2021-04-16 05:12:51','2025-06-28 05:50:16',87,'2019-07-08 07:37:21',28,20,58,7,11);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (37,'Phased discrete website','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',784238,'2019-02-15 17:53:53','2022-10-28 22:39:23',100,'2015-08-28 20:44:43',7,48,7,7,1);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (38,'Networked even-keeled array','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',796524,'2021-12-25 15:21:16','2024-11-04 09:38:32',86,'2020-02-02 03:39:15',21,11,32,1,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (39,'Fully-configurable systemic open system','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.',629613,'2020-06-15 05:19:56','2022-12-12 22:39:51',65,'2017-09-07 09:14:32',22,75,18,7,23);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (40,'Proactive dynamic internet solution','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.',626394,'2022-05-10 04:59:53','2023-05-28 21:21:47',86,'2017-01-09 19:42:14',20,24,83,2,2);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (41,'Adaptive maximized protocol','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',365488,'2017-06-19 12:25:34','2021-08-10 09:08:25',84,'2016-10-06 02:50:14',5,6,28,5,8);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (42,'Cross-platform eco-centric moratorium','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.',458184,'2019-10-11 10:36:56','2022-04-14 16:37:06',99,'2015-11-10 08:18:25',1,82,21,2,9);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (43,'Profound system-worthy contingency','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.',527880,'2018-05-24 08:42:23','2021-08-13 07:38:47',73,'2016-08-25 00:46:53',15,60,100,5,3);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (44,'Synergized fresh-thinking orchestration','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.',245710,'2020-08-12 20:58:11','2023-02-25 19:41:59',98,'2015-07-27 23:33:36',15,76,77,7,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (45,'Fully-configurable multi-tasking customer loyalty','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',915659,'2020-07-08 00:12:01','2023-03-31 16:28:06',64,'2019-06-18 10:48:08',13,97,13,8,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (46,'Inverse intangible hardware','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.',322590,'2020-06-30 08:27:08','2024-09-16 06:23:41',90,'2017-08-16 05:08:23',16,72,49,10,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (47,'Phased value-added parallelism','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.',181971,'2018-10-09 04:04:01','2021-08-11 15:25:27',73,'2016-01-31 13:14:44',10,15,82,10,22);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (48,'Devolved background product','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',184933,'2021-10-16 17:57:46','2024-06-06 01:58:43',68,'2018-12-11 08:28:07',23,99,32,6,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (49,'Multi-channelled bifurcated frame','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',340383,'2020-09-18 03:17:23','2024-10-14 13:13:26',67,'2018-03-22 16:55:58',16,80,86,6,5);
INSERT INTO project(project_id,title,summary,funds,start_date,end_date,grade,evaluation_date,program_id,evaluator_id,supervisor_id,executive_id,organization_id) VALUES (50,'Seamless zero administration protocol','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.',774268,'2020-07-10 14:34:12','2023-01-29 04:44:20',61,'2016-05-20 11:50:54',11,46,20,1,11);

-- focuses_on
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (1,'Biology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (2,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (3,'Molecular Physics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (4,'Statistics and Probability');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (5,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (6,'Economics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (7,'Arts');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (8,'Organic Chemistry');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (9,'Statistics and Probability');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (10,'Control Theory');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (11,'Molecular Physics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (12,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (13,'Economics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (14,'Arts');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (15,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (16,'Philosophy');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (17,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (18,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (19,'Organic Chemistry');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (20,'Molecular Physics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (21,'Medicine');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (22,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (23,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (24,'Aerospace Engineering');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (25,'Biology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (26,'Languages and Literature');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (27,'Medicine');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (28,'Biology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (29,'Medicine');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (30,'Neuroscience');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (31,'Statistics and Probability');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (32,'Computer Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (33,'Arts');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (34,'Control Theory');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (35,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (36,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (37,'Artificial Intelligence');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (38,'Computer Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (39,'Social Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (40,'Artificial Intelligence');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (41,'Arts');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (42,'Economics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (43,'Control Theory');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (44,'Astronomy');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (45,'Social Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (46,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (47,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (48,'Computer Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (49,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (50,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (1,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (2,'Computer Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (3,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (4,'Molecular Physics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (5,'Social Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (6,'Molecular Physics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (7,'Economics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (8,'Languages and Literature');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (9,'Astronomy');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (10,'Languages and Literature');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (11,'Aerospace Engineering');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (18,'Neuroscience');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (19,'Arts');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (20,'Organic Chemistry');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (21,'Languages and Literature');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (22,'Biology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (23,'Biology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (24,'Languages and Literature');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (25,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (26,'Applied Mathematics');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (27,'Social Science');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (28,'Machine Learning');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (29,'Psychology');
INSERT INTO focuses_on(project_id,scientific_field_name) VALUES (30,'Biology');

-- deliverable
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.','2021-01-27 09:20:29',1);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','2025-10-27 12:15:45',2);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','2025-05-06 09:02:55',3);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.','2024-10-03 06:09:16',4);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','2020-04-26 12:16:58',5);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','2026-05-06 04:37:27',6);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','2024-06-25 02:16:03',7);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','2021-06-20 23:21:55',8);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.','2022-02-27 22:19:24',9);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','2025-12-11 15:01:30',10);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2020-12-16 06:14:11',11);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.','2025-04-16 14:11:25',12);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','2020-01-06 14:51:01',13);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','2020-11-26 00:37:19',14);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','2024-12-05 01:10:32',15);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','2020-12-06 19:33:40',16);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','2023-09-10 21:00:36',17);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Sed ante. Vivamus tortor. Duis mattis egestas metus.','2023-09-28 10:40:44',18);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','2022-05-07 19:26:05',19);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','2021-10-01 14:09:39',20);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','2024-08-01 16:01:10',21);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','2025-08-18 15:38:41',22);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','2024-06-14 13:28:42',23);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','2020-01-19 15:30:38',24);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.','2019-04-04 13:11:01',25);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','2026-05-09 22:12:58',26);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','2022-12-28 16:07:25',27);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','2020-07-27 20:54:49',28);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2025-09-26 15:23:42',29);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.','2021-01-11 05:58:57',30);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.','2025-02-19 15:30:59',31);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','2019-02-24 01:24:12',32);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','2018-06-12 01:01:38',33);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.','2024-07-30 08:02:18',34);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','2021-09-19 03:55:39',35);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','2025-06-16 08:15:34',36);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','2022-07-17 06:57:27',37);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2021-09-15 22:59:27',38);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','2023-04-24 08:44:24',39);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','2023-05-07 06:23:19',40);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('First','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.','2023-11-27 15:31:10',41);

INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','2023-08-20 20:32:32',1);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.','2020-04-26 22:50:45',2);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2023-07-28 12:24:53',3);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','2026-01-10 09:28:12',4);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.','2024-07-04 09:24:01',5);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','2022-09-30 20:03:00',6);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','2021-01-15 22:26:16',7);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.','2026-01-12 15:43:51',8);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','2025-04-16 11:04:10',9);
INSERT INTO deliverable(title,summary,due_date,project_id) VALUES ('Second','Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.','2021-06-16 05:27:14',10);

-- works_on
INSERT INTO works_on(project_id,researcher_id) VALUES (33,44);
INSERT INTO works_on(project_id,researcher_id) VALUES (25,7);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,22);
INSERT INTO works_on(project_id,researcher_id) VALUES (25,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,49);
INSERT INTO works_on(project_id,researcher_id) VALUES (12,47);
INSERT INTO works_on(project_id,researcher_id) VALUES (15,7);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,91);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,43);
INSERT INTO works_on(project_id,researcher_id) VALUES (2,65);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,78);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,7);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,90);
INSERT INTO works_on(project_id,researcher_id) VALUES (3,3);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,75);
INSERT INTO works_on(project_id,researcher_id) VALUES (50,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,8);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,8);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,72);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (49,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,12);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,31);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (49,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (48,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,91);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,65);
INSERT INTO works_on(project_id,researcher_id) VALUES (15,64);
INSERT INTO works_on(project_id,researcher_id) VALUES (46,78);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,60);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,10);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,9);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,59);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,43);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,28);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,10);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (33,97);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,43);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,63);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,36);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (15,93);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (12,72);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,76);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,44);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,24);
INSERT INTO works_on(project_id,researcher_id) VALUES (18,23);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (25,41);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,81);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,59);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (29,78);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,51);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (20,51);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,9);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,17);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,80);
INSERT INTO works_on(project_id,researcher_id) VALUES (48,1);
INSERT INTO works_on(project_id,researcher_id) VALUES (13,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (37,16);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,37);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,4);
INSERT INTO works_on(project_id,researcher_id) VALUES (18,89);
INSERT INTO works_on(project_id,researcher_id) VALUES (37,20);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,61);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,79);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,4);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,84);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,36);
INSERT INTO works_on(project_id,researcher_id) VALUES (39,35);
INSERT INTO works_on(project_id,researcher_id) VALUES (20,56);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,59);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (28,3);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,93);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,74);
INSERT INTO works_on(project_id,researcher_id) VALUES (3,94);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,31);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,23);
INSERT INTO works_on(project_id,researcher_id) VALUES (2,32);
INSERT INTO works_on(project_id,researcher_id) VALUES (39,79);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,33);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,33);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,84);
INSERT INTO works_on(project_id,researcher_id) VALUES (37,10);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,25);
INSERT INTO works_on(project_id,researcher_id) VALUES (15,56);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,77);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,35);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,78);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,20);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,85);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,24);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,13);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,62);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,79);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,2);
INSERT INTO works_on(project_id,researcher_id) VALUES (15,21);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,46);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,28);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,6);
INSERT INTO works_on(project_id,researcher_id) VALUES (50,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (22,6);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,91);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,51);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,70);
INSERT INTO works_on(project_id,researcher_id) VALUES (33,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,87);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,25);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,39);
INSERT INTO works_on(project_id,researcher_id) VALUES (2,83);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,85);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,25);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,75);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,45);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,66);
INSERT INTO works_on(project_id,researcher_id) VALUES (49,48);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,80);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,66);
INSERT INTO works_on(project_id,researcher_id) VALUES (50,54);
INSERT INTO works_on(project_id,researcher_id) VALUES (20,4);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,70);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (25,21);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,62);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,81);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,69);
INSERT INTO works_on(project_id,researcher_id) VALUES (29,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (16,67);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,44);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,49);
INSERT INTO works_on(project_id,researcher_id) VALUES (26,26);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,40);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,9);
INSERT INTO works_on(project_id,researcher_id) VALUES (39,16);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,61);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,34);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,79);
INSERT INTO works_on(project_id,researcher_id) VALUES (44,36);
INSERT INTO works_on(project_id,researcher_id) VALUES (20,90);
INSERT INTO works_on(project_id,researcher_id) VALUES (48,61);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,21);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,59);
INSERT INTO works_on(project_id,researcher_id) VALUES (18,8);
INSERT INTO works_on(project_id,researcher_id) VALUES (12,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (28,17);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,90);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,48);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,41);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,50);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,32);
INSERT INTO works_on(project_id,researcher_id) VALUES (22,52);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,62);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,84);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,41);
INSERT INTO works_on(project_id,researcher_id) VALUES (3,76);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,67);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,53);
INSERT INTO works_on(project_id,researcher_id) VALUES (34,11);
INSERT INTO works_on(project_id,researcher_id) VALUES (22,42);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,45);
INSERT INTO works_on(project_id,researcher_id) VALUES (20,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,100);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,15);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,9);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,35);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,1);
INSERT INTO works_on(project_id,researcher_id) VALUES (25,61);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,13);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,89);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,92);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,53);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,34);
INSERT INTO works_on(project_id,researcher_id) VALUES (37,58);
INSERT INTO works_on(project_id,researcher_id) VALUES (26,66);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,32);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,89);
INSERT INTO works_on(project_id,researcher_id) VALUES (22,33);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,17);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,68);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,93);
INSERT INTO works_on(project_id,researcher_id) VALUES (13,65);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,84);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,29);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,23);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,58);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,72);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,11);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,96);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (49,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,16);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,63);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,94);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,29);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,77);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,13);
INSERT INTO works_on(project_id,researcher_id) VALUES (28,63);
INSERT INTO works_on(project_id,researcher_id) VALUES (3,82);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,83);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,20);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,91);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,23);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,50);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,53);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,37);
INSERT INTO works_on(project_id,researcher_id) VALUES (18,92);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,30);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,61);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,44);
INSERT INTO works_on(project_id,researcher_id) VALUES (26,64);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,97);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,17);
INSERT INTO works_on(project_id,researcher_id) VALUES (33,99);
INSERT INTO works_on(project_id,researcher_id) VALUES (35,64);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,60);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,98);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,17);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,1);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,70);
INSERT INTO works_on(project_id,researcher_id) VALUES (14,39);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,51);
INSERT INTO works_on(project_id,researcher_id) VALUES (23,94);
INSERT INTO works_on(project_id,researcher_id) VALUES (38,75);
INSERT INTO works_on(project_id,researcher_id) VALUES (12,83);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,10);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,45);
INSERT INTO works_on(project_id,researcher_id) VALUES (39,15);
INSERT INTO works_on(project_id,researcher_id) VALUES (11,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,21);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,40);
INSERT INTO works_on(project_id,researcher_id) VALUES (13,6);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,39);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,7);
INSERT INTO works_on(project_id,researcher_id) VALUES (41,82);
INSERT INTO works_on(project_id,researcher_id) VALUES (37,51);
INSERT INTO works_on(project_id,researcher_id) VALUES (13,58);
INSERT INTO works_on(project_id,researcher_id) VALUES (39,19);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,86);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,100);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,34);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,38);
INSERT INTO works_on(project_id,researcher_id) VALUES (26,95);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,49);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,87);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,89);
INSERT INTO works_on(project_id,researcher_id) VALUES (13,20);
INSERT INTO works_on(project_id,researcher_id) VALUES (31,15);
INSERT INTO works_on(project_id,researcher_id) VALUES (48,93);
INSERT INTO works_on(project_id,researcher_id) VALUES (40,55);
INSERT INTO works_on(project_id,researcher_id) VALUES (18,6);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,82);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,28);
INSERT INTO works_on(project_id,researcher_id) VALUES (45,64);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,78);
INSERT INTO works_on(project_id,researcher_id) VALUES (47,43);
INSERT INTO works_on(project_id,researcher_id) VALUES (49,65);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,74);
INSERT INTO works_on(project_id,researcher_id) VALUES (50,76);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,85);
INSERT INTO works_on(project_id,researcher_id) VALUES (30,75);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,42);
INSERT INTO works_on(project_id,researcher_id) VALUES (29,44);
INSERT INTO works_on(project_id,researcher_id) VALUES (11,16);
INSERT INTO works_on(project_id,researcher_id) VALUES (36,16);
INSERT INTO works_on(project_id,researcher_id) VALUES (42,52);
INSERT INTO works_on(project_id,researcher_id) VALUES (27,79);
INSERT INTO works_on(project_id,researcher_id) VALUES (32,15);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,96);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,41);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,10);
INSERT INTO works_on(project_id,researcher_id) VALUES (12,69);
INSERT INTO works_on(project_id,researcher_id) VALUES (21,92);
INSERT INTO works_on(project_id,researcher_id) VALUES (43,73);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,37);
INSERT INTO works_on(project_id,researcher_id) VALUES (19,88);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,94);
INSERT INTO works_on(project_id,researcher_id) VALUES (17,49);
INSERT INTO works_on(project_id,researcher_id) VALUES (16,37);
INSERT INTO works_on(project_id,researcher_id) VALUES (29,47);
INSERT INTO works_on(project_id,researcher_id) VALUES (24,95);
INSERT INTO works_on(project_id,researcher_id) VALUES (33,12);
INSERT INTO works_on(project_id,researcher_id) VALUES (1,14);
INSERT INTO works_on(project_id,researcher_id) VALUES (2,18);
INSERT INTO works_on(project_id,researcher_id) VALUES (3,83);
INSERT INTO works_on(project_id,researcher_id) VALUES (4,38);
INSERT INTO works_on(project_id,researcher_id) VALUES (5,40);
INSERT INTO works_on(project_id,researcher_id) VALUES (6,26);
INSERT INTO works_on(project_id,researcher_id) VALUES (7,57);
INSERT INTO works_on(project_id,researcher_id) VALUES (8,53);
INSERT INTO works_on(project_id,researcher_id) VALUES (9,94);
INSERT INTO works_on(project_id,researcher_id) VALUES (10,50);
