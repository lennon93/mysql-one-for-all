SELECT DISTINCT U.user_name AS pessoa_usuaria,
IF ( MAX(YEAR(P.reprodution_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
 FROM SpotifyClone.playback_history AS P 
 INNER JOIN SpotifyClone.users AS U
ON U.user_id = P.user_id
GROUP BY user_name
ORDER BY pessoa_usuaria;