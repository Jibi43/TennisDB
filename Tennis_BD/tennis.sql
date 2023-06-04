/*
Kod generujący bazę danych tennis
Tabele: player, coach, tournament, court, round
*/
CREATE SCHEMA tennis;

USE tennis;

CREATE TABLE coach(
	coach_id INT PRIMARY KEY NOT NULL,
    coach_fname VARCHAR(50) NOT NULL,
    coach_lname VARCHAR(50) NOT NULL,
    nationality VARCHAR(3) NOT NULL,
    birthdate DATE NOT NULL
);
CREATE TABLE player(
	player_id INT PRIMARY KEY NOT NULL,
    player_fname VARCHAR(50) NOT NULL,
    player_lname VARCHAR(50) NOT NULL,
    nationality VARCHAR(3) NOT NULL,
    birthdate DATE NOT NULL
);
CREATE TABLE player_coach (
	player_id INT,
	coach_id INT,
	FOREIGN KEY (player_id) REFERENCES player(player_id),
	FOREIGN KEY (coach_id) REFERENCES coach(coach_id),
	PRIMARY KEY (player_id, coach_id)
);
CREATE TABLE court(
	court_id INT PRIMARY KEY NOT NULL ,
	surface VARCHAR(10),
	venue VARCHAR(50)
);
CREATE TABLE tournament(
	tournament_id INT PRIMARY KEY NOT NULL,
	tournament_name VARCHAR(50) NOT NULL,
	start_date DATE NOT NULL,
	tournament_level VARCHAR(50),
	court_id INT,
	FOREIGN KEY (court_id) REFERENCES court(court_id)
);
CREATE TABLE contest(
	contest_id INT PRIMARY KEY NOT NULL,
	player1_id INT,
	player2_id INT,
	tournament_id INT,
	contest_round VARCHAR(50),
	winner_id INT,
	FOREIGN KEY (player1_id) REFERENCES player(player_id),
	FOREIGN KEY (player2_id) REFERENCES player(player_id),
	FOREIGN KEY (winner_id) REFERENCES player(player_id),
	FOREIGN KEY (tournament_id) REFERENCES tournament(tournament_id)
);