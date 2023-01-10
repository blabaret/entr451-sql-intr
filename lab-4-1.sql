-- How many lifetime hits does Barry Bonds have?

SELECT * FROM players
WHERE first_name = "Barry"
AND last_name = "Bonds";

SELECT first_name, last_name, SUM(hits)
FROM stats
INNER JOIN players ON players.id = stats.player_id
WHERE first_name = "Barry" AND last_name = "Bonds"
;

-- Expected result:
-- 2935


