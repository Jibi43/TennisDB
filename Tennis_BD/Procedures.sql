/*
	Procedura zlicza procent wygranych meczy przez wybranego tenisite
*/
DELIMITER $$
CREATE PROCEDURE win_ratio(
    IN player_id INT,
    OUT win_percentage DECIMAL(5, 2)
)
BEGIN
    DECLARE total_contests INT;
    DECLARE total_wins INT;
    
    SELECT COUNT(*) INTO total_contests
    FROM contest
    WHERE player1_id = player_id OR player2_id = player_id;

    SELECT COUNT(*) INTO total_wins
    FROM contest
    WHERE winner_id = player_id;

    IF total_contests > 0 THEN
        SET win_percentage = (total_wins / total_contests) * 100;
    ELSE
        SET win_percentage = 0;
    END IF;
END$$
DELIMITER ;
/*
	Procedura zlicza liczbę zagranych meczy przez wybranego tenisiste
*/
DELIMITER $$
CREATE PROCEDURE match_count(
    IN player_id INT,
    OUT match_count INT
)
BEGIN
    SELECT COUNT(*) INTO match_count
    FROM contest
    WHERE player1_id = player_id OR player2_id = player_id;
END$$
DELIMITER ;
/*
	Procedura wypisuje liste tenisitów trenowanych przez wybranego trenera
*/
DELIMITER $$
CREATE PROCEDURE coach_player_list(
    IN coach_id INT
)
BEGIN
    SELECT p.player_id, p.player_fname, p.player_lname
    FROM player p
    INNER JOIN player_coach pc ON p.player_id = pc.player_id
    WHERE pc.coach_id = coach_id;
END$$
DELIMITER ;
/*
	Procedura wypisuje listę trenerów wybranego tenisity
*/
DELIMITER $$
CREATE PROCEDURE player_coach_list(
    IN player_id INT
)
BEGIN
    SELECT c.coach_id, c.coach_fname, c.coach_lname
    FROM coach c
    INNER JOIN player_coach pc ON c.coach_id = pc.coach_id
    WHERE pc.player_id = player_id;
END$$
DELIMITER ;
/*
	Procedura wywołuje procedurę win_ratio dla dwóych wybranych tenisitów, następnie porównuje procent ich wygranych meczów i wypisuje
    tego kto ma większy.
    W wypadku remisu wypisuje 0
*/
DELIMITER $$
CREATE PROCEDURE win_predict(
    IN player1_id INT,
    IN player2_id INT,
    OUT winner_id INT
)
BEGIN
    DECLARE player1_percentage DECIMAL(5, 2);
    DECLARE player2_percentage DECIMAL(5, 2);
    
    CALL win_ratio(player1_id, @player1_percentage);
    CALL win_ratio(player2_id, @player2_percentage);
    
    IF @player1_percentage > @player2_percentage THEN
        SET winner_id = player1_id;
    ELSEIF @player1_percentage < @player2_percentage THEN
        SET winner_id = player2_id;
    ELSE
        SET winner_id = 0; 
    END IF;
END$$
DELIMITER ;

/*
 Przykładowe wywołania
*/
/*
CALL win_ratio(27, @win_percentage);
SELECT @win_percentage;

CALL match_count(7, @match_count);
SELECT @match_count;

CALL coach_player_list(5);

CALL player_coach_list(21);

CALL win_predict(7, 27, @winner_id);
SELECT @winner_id;
*/