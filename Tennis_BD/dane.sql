USE tennis;

INSERT INTO coach values(1,'Carlos','Moya','ESP','1976-08-27');
INSERT INTO coach values(2,'James','Trorman','GBR','1976-02-16');
INSERT INTO coach values(3,'Chrisitan','Ruud','NOR','1972-08-24');
INSERT INTO coach values(4,'Daniel','Vacek','CZE','1971-04-01');
INSERT INTO coach values(5,'Patrick','Mouratoglou','GRC	','1970-05-08');
INSERT INTO coach values(6,'Nicholas','Devilder','FRA','1980-03-23');
INSERT INTO coach values(7,'Marian','Vajda','SVK','1965-03-24');
INSERT INTO coach values(8,'Fernando','Vicente','ESP','1977-03-08');
INSERT INTO coach values(9,'Nicolas','Massu','CHL','1979-10-10');
INSERT INTO coach values(10,'Guillaume','Marx','FRA','1972-04-24');
INSERT INTO coach values(11,'Fredric','Fontang','FRA','1970-03-18');
INSERT INTO coach values(12,'Toni','Nadal','ESP','1961-02-21');
INSERT INTO coach values(13,'Goran','Ivanisevic','HRV','1971-09-13');
INSERT INTO coach values(14,'Malek','Jaziri','TUN','1984-01-20');
INSERT INTO coach values(15,'Gilles','Vervara','FRA','1981-01-2');
INSERT INTO coach values(16,'Maxime','Tabutruong','FRA','1989-09-24');
INSERT INTO coach values(17,'Kaure','Sel','BRA','1993-11-13');
INSERT INTO coach values(18,'Michael','Rusell','USA','1978-04-01');
INSERT INTO coach values(19,'Paul','Annacone','USA','1963-03-20');
INSERT INTO coach values(20,'Frank','Dancevic','CAN','1984-09-26');
INSERT INTO coach values(21,'Craig','Boynton','USA','1964-01-19');
INSERT INTO coach values(22,'Javier','Ferrer','ESP','1964-01-19');
INSERT INTO coach values(23,'Facundo','Lugones','ARG','1992-07-6');
INSERT INTO coach values(24,'Alexander','Zverev','GER','1960-01-22');
INSERT INTO coach values(25,'Diego','Jungueira','ARG','1980-12-28');
INSERT INTO coach values(26,'Ivan','Lendl','USA','1960-03-7');
INSERT INTO coach values(27,'Vincenzo','Santopdare','ITA','1971-08-11');
INSERT INTO coach values(28,'Jose','Clavet','ESP','1965-09-11');
INSERT INTO coach values(29,'Brad','Stine','USA','1958-09-11');
INSERT INTO coach values(30,'Michael','Navratil','CZE','1982-11-20');
INSERT INTO coach values(31,'Martin','Stepanek','CZE','1979-12-13');
INSERT INTO coach values(32,'Radek','Stepanek','CZE','1978-11-27');
INSERT INTO coach values(33,'Bryan','Shelton','USA','1965-12-22');
INSERT INTO coach values(34,'Simone','Vagnozzi','ITA','1983-04-30');
INSERT INTO coach values(35,'Darren','Cahill','AUS','1965-10-02');
INSERT INTO coach values(36,'Peter','Luczak','AUS','1971-08-31');
INSERT INTO coach values(37,'Adolfo','Gutierrez','AUS','1971-08-31');
INSERT INTO coach values(38,'Chrisitan','Zahalka','AUS','1983-04-30');
INSERT INTO coach values(39,'Daniel','Traver','ESP','1985-08-07');
INSERT INTO coach values(40,'Pepe','Vendrell','ESP','1980-08-21');
INSERT INTO coach values(41,'Patrick','Thompson','USA','1983-04-30');

INSERT INTO player values(1,'Rafeal','Nadal','ESP','1986-06-03');
INSERT INTO player values(2,'Jack','Draper','GBR','2001-12-22');
INSERT INTO player values(3,'Casper','Ruud','NOR','1998-12-22');
INSERT INTO player values(4,'Tomas','Machas','CZE','2000-10-13');
INSERT INTO player values(5,'Stefanos','Tsitpas','GRC','1998-08-12');
INSERT INTO player values(6,'Quentin','Halys','FRA','1996-10-26');
INSERT INTO player values(7,'Novak','Djokovic','SRB','1987-05-22');
INSERT INTO player values(8,'Roberto','Baena','ESP','1993-03-23');
INSERT INTO player values(9,'Andrey','Rublev','RUS','1997-10-20');
INSERT INTO player values(10,'Dominic','Thiem','AUT','1993-09-03');
INSERT INTO player values(11,'Felix','Auger','CAN','2000-08-08');
INSERT INTO player values(12,'Vasek','Pospisil','CAN','1990-06-23');
INSERT INTO player values(13,'Daniil','Medvedev','RUS','1996-02-11');
INSERT INTO player values(14,'Marcos','Giron','USA','1993-07-24');
INSERT INTO player values(15,'Taylor','Fritz','USA','1997-10-28');
INSERT INTO player values(16,'Nikoloz','Basilashbili','GEO','1992-02-23');
INSERT INTO player values(17,'Holger','Rune','DEN','2003-04-29');
INSERT INTO player values(18,'Filip','Krajinovic','SRB','1992-02-27');
INSERT INTO player values(19,'Hubert','Hurkacz','POL','1997-02-11');
INSERT INTO player values(20,'Pedro','Portero','ESP','1997-04-26');
INSERT INTO player values(21,'Cameron','Norrie','GBR','1995-08-23');
INSERT INTO player values(22,'Luca','Assche','FRA','2004-05-11');
INSERT INTO player values(23,'Alexander','Zverev','GER','1997-04-20');
INSERT INTO player values(24,'Juan','Samudio','PER','1995-10-06');
INSERT INTO player values(25,'Andy','Murray','USA','1987-05-15');
INSERT INTO player values(26,'Matteo','Berrettini','ITA','1996-04-12');
INSERT INTO player values(27,'Roberto','Agut','GRE','1998-04-14');
INSERT INTO player values(28,'Karen','Khachanov','RUS','1996-05-21');
INSERT INTO player values(29,'Tommy','Paul','USA','1997-05-17');	
INSERT INTO player values(30,'Jiri','Lehecka','CZE','2001-11-08');
INSERT INTO player values(31,'Sebastian','Korda','USA','2000-07-05');
INSERT INTO player values(32,'Ben','Shelton','USA','2002-10-09');
INSERT INTO player values(33,'Janik','Sinner','ITA','2001-08-16');
INSERT INTO player values(34,'Alex','Mianur','AUS','1999-02-17');
INSERT INTO player values(35,'Yoshihito ','Nishioka ','JAP','1995-09-27');
INSERT INTO player values(36,'Jeffrey ','Wolf ','USA','1998-12-21');

INSERT INTO player_coach values(1,1);
INSERT INTO player_coach values(2,2);
INSERT INTO player_coach values(3,3);
INSERT INTO player_coach values(4,4);
INSERT INTO player_coach values(5,5);
INSERT INTO player_coach values(6,6);
INSERT INTO player_coach values(7,7);
INSERT INTO player_coach values(9,8);
INSERT INTO player_coach values(10,9);
INSERT INTO player_coach values(11,10);
INSERT INTO player_coach values(7,13);
INSERT INTO player_coach values(11,11);
INSERT INTO player_coach values(11,12);
INSERT INTO player_coach values(12,14);
INSERT INTO player_coach values(13,15);
INSERT INTO player_coach values(14,16);
INSERT INTO player_coach values(14,17);
INSERT INTO player_coach values(15,18);
INSERT INTO player_coach values(15,19);
INSERT INTO player_coach values(17,5);
INSERT INTO player_coach values(18,20);
INSERT INTO player_coach values(19,21);
INSERT INTO player_coach values(21,2);
INSERT INTO player_coach values(21,23);
INSERT INTO player_coach values(23,24);
INSERT INTO player_coach values(24,25);
INSERT INTO player_coach values(25,26);
INSERT INTO player_coach values(26,27);
INSERT INTO player_coach values(27,39);
INSERT INTO player_coach values(28,28);
INSERT INTO player_coach values(29,29);
INSERT INTO player_coach values(30,30);
INSERT INTO player_coach values(31,31);
INSERT INTO player_coach values(31,32);
INSERT INTO player_coach values(32,33);
INSERT INTO player_coach values(33,34);
INSERT INTO player_coach values(33,35);
INSERT INTO player_coach values(34,36);
INSERT INTO player_coach values(34,37);
INSERT INTO player_coach values(35,38);
INSERT INTO player_coach values(27,40);
INSERT INTO player_coach values(36,41);

INSERT INTO court values(1,'Hard','Melbourne Park');

INSERT INTO tournament values(1,'Australian Open','2023-01-16','Grand Slam',1);

INSERT INTO contest values(1,7,5,1,"Final",7);
INSERT INTO contest values(2,5,28,1,"Semi Final",5);
INSERT INTO contest values(3,7,29,1,"Semi Final",7);
INSERT INTO contest values(4,5,30,1,"Quarter Final",5);
INSERT INTO contest values(5,7,9,1,"Quarter Final",7);
INSERT INTO contest values(6,28,31,1,"Quarter Final",28);
INSERT INTO contest values(7,29,32,1,"Quarter Final",29);
INSERT INTO contest values(8,5,33,1,"Round of 16",5);
INSERT INTO contest values(9,7,34,1,"Round of 16",7);
INSERT INTO contest values(10,17,9,1,"Round of 16",9);
INSERT INTO contest values(11,11,30,1,"Round of 16",30);
INSERT INTO contest values(12,31,19,1,"Round of 16",31);
INSERT INTO contest values(13,28,35,1,"Round of 16",28);
INSERT INTO contest values(14,27,29,1,"Round of 16",29);
INSERT INTO contest values(15,36,32,1,"Round of 16",32);
