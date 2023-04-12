SELECT S.song_name AS cancao, COUNT(P.song_id) AS reproducoes
FROM SpotifyClone.playback_history AS P
INNER JOIN SpotifyClone.songs AS S
ON S.song_id = P.song_id
GROUP BY S.song_id
ORDER BY COUNT(song_id) DESC, song_name
LIMIT 2;