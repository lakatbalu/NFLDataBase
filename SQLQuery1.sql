CREATE TABLE TEAM(
TEAM_ID numeric(3) not null,
TEAM_NAME varchar(20),
POINTS_SCORED numeric(3),
POINTS_ALLOWED numeric(3),
TOUCHDOWNS numeric(3),
WINS numeric(3),
LOSSES numeric(3),
constraint TEAM_pk primary key (TEAM_ID)
);

CREATE TABLE COACH(
COACH_ID numeric(3) not null,
NAME varchar(20),
NATIONALITY varchar(20),
AGE numeric(2),
TYPE varchar(20),
SALARY numeric(7),
TEAM_ID numeric(3),
constraint COACH_pk primary key(COACH_ID),
constraint COACH_fk foreign key(TEAM_ID) references TEAM(TEAM_ID)
);

CREATE TABLE PLAYER(
PLAYER_ID numeric(4) not null,
NAME varchar(30),
NATIONALITY varchar(30),
AGE numeric(2),
POSITION varchar(30),
UNIFORM_NR numeric(2),
SALARY numeric(7),
TEAM_ID numeric(3),
COACH_ID numeric(3),
constraint PLAYER_pk primary key(PLAYER_ID),
constraint PLAYER_fk_1 foreign key(TEAM_ID) references TEAM(TEAM_ID),
constraint PLAYER_fk_2 foreign key(COACH_ID) references COACH(COACH_ID)
);

INSERT INTO TEAM VALUES (10,'Green Bay Packers', 197, 159, 18, 5, 1);
INSERT INTO TEAM VALUES (11,'New York Giants', 123, 178, 7, 1, 6);
INSERT INTO TEAM VALUES (12,'Baltimore Ravens', 179, 104, 15, 5, 1);
INSERT INTO TEAM VALUES (13,'Cleveland Browns', 200, 221, 19, 5, 2);
INSERT INTO TEAM VALUES (14,'Miami Dolphins', 160, 113, 13, 3, 3);
INSERT INTO TEAM VALUES (15,'Las Vegas Raiders', 171, 197, 14, 3, 4);
INSERT INTO TEAM VALUES (16,'Kansas City Chiefs', 218, 143, 20, 6, 1);
INSERT INTO TEAM VALUES (17,'Minnesota Vikings', 133, 165, 10, 1, 5);
INSERT INTO TEAM VALUES (18,'New York Jets', 85, 203, 6, 0, 6);
INSERT INTO TEAM VALUES (19,'Arizona Cardinals', 203, 146, 17, 5, 2);

INSERT INTO COACH VALUES (100, 'Zac Harrison', 'USA', 45, 'Offensive', 3000, 10);
INSERT INTO COACH VALUES (101, 'Branko Zebec', 'Serbian', 30, 'Defensive', 2600, 10);
INSERT INTO COACH VALUES (102, 'Lucas Harper', 'USA', 38, 'Special Team', 1800, 10);
INSERT INTO COACH VALUES (103, 'Kovács István', 'Hungarian', 40, 'Offensive', 3200, 11);
INSERT INTO COACH VALUES (104, 'Rashad Gill', 'USA', 52, 'Defensive', 3100, 11);
INSERT INTO COACH VALUES (105, 'Reinhard Saftig', 'German', 36, 'Special Team', 2975, 11);
INSERT INTO COACH VALUES (106, 'Niko Kovac', 'USA', 32, 'Offensive', 2500, 12);
INSERT INTO COACH VALUES (107, 'Johnny Murray', 'USA', 44, 'Defensive', 2850, 12);
INSERT INTO COACH VALUES (108, 'Sören Lerby', 'Sweden', 60, 'Special Team', 3950, 12);
INSERT INTO COACH VALUES (109, 'Errich Ribbeck', 'German', 51, 'Defensive', 2430, 13);
INSERT INTO COACH VALUES (110, 'Archie Lewis', 'USA', 28, 'Special Team', 3050, 13);
INSERT INTO COACH VALUES (111, 'Bíró Imre', 'Hungarian', 30, 'Offensive', 4000, 13);
INSERT INTO COACH VALUES (112, 'Riley Holland', 'USA', 32, 'Special Team', 2880, 14);
INSERT INTO COACH VALUES (113, 'Bogdanovics Igor', 'Serbian', 42, 'Offensive', 2940, 14);
INSERT INTO COACH VALUES (114, 'Toby Turner', 'USA', 25, 'Defensive', 3400, 14);
INSERT INTO COACH VALUES (115, 'Dalton Key', 'USA', 23, 'Defensive', 3200, 15);
INSERT INTO COACH VALUES (116, 'Jack Wakely', 'Irish', 30, 'Offensive', 3550, 15);
INSERT INTO COACH VALUES (117, 'Stanley Jackson', 'USA', 35, 'Special Team', 2870, 15);
INSERT INTO COACH VALUES (118, 'Charlie Brown', 'USA', 33, 'Special Team', 3670, 16);
INSERT INTO COACH VALUES (119, 'Diego Almeida', 'Spainish', 42, 'Offensive', 2000, 16);
INSERT INTO COACH VALUES (120, 'Mex Hethaway', 'USA', 47, 'Defensive', 2640, 16);
INSERT INTO COACH VALUES (121, 'Nenad Nasic', 'Russian', 41, 'Offensive', 3000, 17);
INSERT INTO COACH VALUES (122, 'Troy Reeves', 'USA', 36, 'Defensive', 2990, 17);
INSERT INTO COACH VALUES (123, 'Ernest Fry', 'USA', 29, 'Special Team', 2860, 17);
INSERT INTO COACH VALUES (124, 'Enrique Gonzalez', 'Spain', 48, 'Defensive', 3530, 18);
INSERT INTO COACH VALUES (125, 'Karter Bender', 'USA', 32, 'Offensive', 3920, 18);
INSERT INTO COACH VALUES (126, 'Frankie Allen', 'USA', 33, 'Special Team', 3780, 18);
INSERT INTO COACH VALUES (127, 'Marco Reus', 'German', 45, 'Special Team', 3200, 19);
INSERT INTO COACH VALUES (128, 'Kole Brennan', 'USA', 38, 'Defensive', 3500, 19);
INSERT INTO COACH VALUES (129, 'Logan Morgan', 'USA', 30, 'Offensive', 3100, 19);

INSERT INTO PLAYER VALUES (1000, 'Cameron Brown', 'USA', 21, 'Offense', 88, 5000, 10, 100);
INSERT INTO PLAYER VALUES (1001, 'Nagy Ádám', 'Hungarian', 18, 'Defense', 15, 6700, 10, 101);
INSERT INTO PLAYER VALUES (1002, 'Erik Güldenstadt', 'USA', 37, 'Special Team', 8, 12000, 10, 102);
INSERT INTO PLAYER VALUES (1003, 'Otto Scherzinger', 'USA', 29, 'Defense', 7, 12500, 10, 101);
INSERT INTO PLAYER VALUES (1004, 'Arlo Beckman', 'Canadian', 19, 'Special Team', 77, 6000, 10, 102);
INSERT INTO PLAYER VALUES (1005, 'Oakley Floyd', 'USA', 31, 'Offense', 92, 7000, 10, 100);
INSERT INTO PLAYER VALUES (1006, 'Gaige Ellis', 'USA', 25, 'Special Team', 33, 5500, 11, 105);
INSERT INTO PLAYER VALUES (1007, 'Stefano Gálvez', 'Mexican', 35, 'Offense', 12, 6200, 11, 103);
INSERT INTO PLAYER VALUES (1008, 'Noah Richards', 'USA', 19, 'Offense', 4, 14000, 11, 103);
INSERT INTO PLAYER VALUES (1009, 'Eliot Nielsen', 'USA', 25, 'Defense', 2, 20000, 11, 104);
INSERT INTO PLAYER VALUES (1010, 'Bernardino de Segura', 'Spanish', 17, 'Special Team', 6, 17500, 11, 105);
INSERT INTO PLAYER VALUES (1011, 'Luis Chambers', 'USA', 22, 'Defense', 99, 22000, 11, 104);
INSERT INTO PLAYER VALUES (1012, 'Atticus Myers', 'USA', 32, 'Offense', 1, 4000, 12, 106);
INSERT INTO PLAYER VALUES (1013, 'Jacob Fischer', 'USA', 21, 'Offense', 5, 3200, 12, 106);
INSERT INTO PLAYER VALUES (1014, 'Bouard Ramos Myke', 'Mexican', 19, 'Special Team', 64, 19000, 12, 108);
INSERT INTO PLAYER VALUES (1015, 'Anderson Pico', 'Mexican', 35, 'Defense', 7, 3000, 12, 107);
INSERT INTO PLAYER VALUES (1016, 'Paulin Didier', 'USA', 18, 'Defense', 79, 5700, 12, 107);
INSERT INTO PLAYER VALUES (1017, 'Raymond Wolfe', 'USA', 28, 'Special Team', 12, 7600, 12, 108);
INSERT INTO PLAYER VALUES (1018, 'Thomas Tuchel', 'German', 19, 'Special Team', 11, 9400, 13, 110);
INSERT INTO PLAYER VALUES (1019, 'Ashton Jackson', 'USA', 33, 'Offense', 20, 8200, 13, 111);
INSERT INTO PLAYER VALUES (1020, 'Lamar Jackson', 'USA', 40, 'Offense', 55, 11500, 13, 111);
INSERT INTO PLAYER VALUES (1021, 'Theo Burt', 'Canadian', 31, 'Defense', 15, 11900, 13, 109);
INSERT INTO PLAYER VALUES (1022, 'Aron Rogers', 'USA', 27, 'Special Team', 30, 17500, 13, 110);
INSERT INTO PLAYER VALUES (1023, 'Justin Hardy', 'Canadian', 42, 'Defense', 17, 22000, 13, 109);
INSERT INTO PLAYER VALUES (1024, 'Dak Prescott', 'USA', 19, 'Offense', 36, 4680, 14, 113);
INSERT INTO PLAYER VALUES (1025, 'Russel Wilson', 'USA', 32, 'Special Team', 15, 9990, 14, 112);
INSERT INTO PLAYER VALUES (1026, 'George Kittle', 'USA', 33, 'Special Team', 96, 19000, 14, 112);
INSERT INTO PLAYER VALUES (1027, 'Berthold Schwartzman', 'German', 17, 'Defense', 7, 6800, 14, 114);
INSERT INTO PLAYER VALUES (1028, 'Eli Manning', 'USA', 26, 'Defense', 2, 7300, 14, 114);
INSERT INTO PLAYER VALUES (1029, 'Billy Phillips', 'USA', 23, 'Offense', 3, 16000, 14, 113);
INSERT INTO PLAYER VALUES (1030, 'Ilic Brana', 'Serbian', 24, 'Offense', 87, 21500, 15, 116);
INSERT INTO PLAYER VALUES (1031, 'Giovani Phelps', 'USA', 29, 'Defense', 90, 17500, 15, 115);
INSERT INTO PLAYER VALUES (1032, 'Zac Mitchell', 'USA', 36, 'Special Team', 18, 13400, 15, 117);
INSERT INTO PLAYER VALUES (1033, 'Chris Alvaro', 'Mexican', 25, 'Offense', 11, 12100, 15, 116);
INSERT INTO PLAYER VALUES (1034, 'Malvin Madden', 'USA', 31, 'Special Team', 50, 8800, 15, 117);
INSERT INTO PLAYER VALUES (1035, 'Jack Gibbson', 'USA', 30, 'Defense', 8, 5600, 15, 115);
INSERT INTO PLAYER VALUES (1036, 'Will Powell', 'USA', 37, 'Offense', 70, 7500, 16, 119);
INSERT INTO PLAYER VALUES (1037, 'Bertrand Mazet', 'French', 23, 'Special Team', 20, 6300, 16, 118);
INSERT INTO PLAYER VALUES (1038, 'Patrick Mahomes', 'USA', 36, 'Defense', 13, 15000, 16, 120);
INSERT INTO PLAYER VALUES (1039, 'Benjamin Fitzpatrick', 'USA', 20, 'Offense', 45, 18000,  16, 119);
INSERT INTO PLAYER VALUES (1040, 'Fadrique de Canado', 'Mexican', 24, 'Defense', 1, 20000, 16, 120);
INSERT INTO PLAYER VALUES (1041, 'Derek Carr', 'USA', 35, 'Special Team', 2, 17500, 16, 118);
INSERT INTO PLAYER VALUES (1042, 'Tim Howard', 'USA', 21, 'Defense', 16, 6600, 17, 122);
INSERT INTO PLAYER VALUES (1043, 'Nick Chubb', 'USA', 27, 'Offense', 44, 7700, 17, 121);
INSERT INTO PLAYER VALUES (1044, 'Leon de Sant Miguel', 'Mexican', 22, 'Special Team', 21, 8800, 17, 123);
INSERT INTO PLAYER VALUES (1045, 'Antonio Brown', 'USA', 28, 'Defense', 15, 9900, 17, 122);
INSERT INTO PLAYER VALUES (1046, 'Konnor Fox', 'USA', 34, 'Special Team', 58, 10000, 17, 123);
INSERT INTO PLAYER VALUES (1047, 'Finley Moore', 'Canadian', 20, 'Offense', 17, 22000, 17, 121);
INSERT INTO PLAYER VALUES (1048, 'Bradley Woods', 'USA', 20, 'Offense', 10, 18000, 18, 125);
INSERT INTO PLAYER VALUES (1049, 'Logan Cerrano', 'USA', 33, 'Special Team', 73, 9000, 18, 126);
INSERT INTO PLAYER VALUES (1050, 'Mathis Delisle', 'USA', 19, 'Defense', 43, 13000, 18, 124);
INSERT INTO PLAYER VALUES (1051, 'Artur Suhren', 'Irish', 32, 'Special Team', 11, 19000, 18, 126);
INSERT INTO PLAYER VALUES (1052, 'August Noel', 'USA', 30, 'Offense', 8, 18000, 18, 125);
INSERT INTO PLAYER VALUES (1053, 'Joshua Harper', 'USA', 31, 'Defense', 9, 15000, 18, 124);
INSERT INTO PLAYER VALUES (1054, 'Lukas Peters', 'Canadian', 18, 'Special Team', 20, 17500, 19, 127);
INSERT INTO PLAYER VALUES (1055, 'Mathis Delisle', 'USA', 19, 'Offense', 1, 13000, 19, 129);
INSERT INTO PLAYER VALUES (1056, 'Artur Suhren', 'USA', 32, 'Defense', 92, 9000, 19, 128);
INSERT INTO PLAYER VALUES (1057, 'Harley Watts', 'USA', 30, 'Special Team', 8, 8000, 19, 127);
INSERT INTO PLAYER VALUES (1058, 'Iker Martí', 'Mexican', 31, 'Defense', 9, 10200, 19, 128);
INSERT INTO PLAYER VALUES (1059, 'Benjamin Andrews', 'USA', 18, 'Offense', 86, 10800, 19, 129);
