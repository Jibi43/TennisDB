/*
	Funkcja liczy liczbę tenisitów z danego kraju
*/
DELIMITER $$
CREATE FUNCTION count_player_by_nationality(nationality VARCHAR(3))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE player_count INT;
    
    SELECT COUNT(*) INTO player_count
    FROM player
    WHERE player.nationality = nationality;
    
    RETURN player_count;
END$$
DELIMITER ;
/*
	Funkcja liczy liczbę wygranych meczów danego tenisity
*/
DELIMITER $$
CREATE FUNCTION count_wins(player_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_wins INT;
    
    SELECT COUNT(*) INTO total_wins
    FROM contest
    WHERE winner_id = player_id;
    
    RETURN total_wins;
END$$
DELIMITER ;
/*
	Funkcja liczy liczbę tenisitów w danym przedziale wiekowym
*/
DELIMITER $$
CREATE FUNCTION count_player_by_age(minAge INT, maxAge INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE player_count INT;
    DECLARE minBirthdate DATE;
    DECLARE maxBirthdate DATE;
    
    SET minBirthdate = DATE_SUB(CURDATE(), INTERVAL minAge YEAR);
    SET maxBirthdate = DATE_SUB(CURDATE(), INTERVAL maxAge + 1 YEAR);
    
    SELECT COUNT(*) INTO player_count
    FROM player
    WHERE player.birthdate <= minBirthdate
        AND player.birthdate > maxBirthdate;
    
    RETURN player_count;
END$$
DELIMITER ;
/*
	Przykładowe wywołania
*/

/*
SELECT count_player_by_nationality('USA') AS player_count;

SELECT count_wins(7) AS total_wins;

SELECT count_player_by_age(10,21) AS player_count;
*/

