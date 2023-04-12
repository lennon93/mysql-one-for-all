SELECT COUNT(P.song_id) AS musicas_no_historico
FROM SpotifyClone.playback_history AS P
INNER JOIN SpotifyClone.users AS U
ON P.user_id = U.user_id
WHERE user_name = 'Barbara Liskov';