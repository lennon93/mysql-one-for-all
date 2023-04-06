SELECT U.user_name AS pessoa_usuaria, COUNT(P.user_id) AS musicas_ouvidas,
ROUND(SUM(S.duration_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.playback_history AS P
INNER JOIN SpotifyClone.users AS U
ON U.user_id = P.user_id
INNER JOIN SpotifyClone.songs AS S
ON S.song_id = P.song_id
GROUP BY U.user_id
ORDER BY pessoa_usuaria;