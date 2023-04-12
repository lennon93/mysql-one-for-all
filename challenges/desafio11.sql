SELECT A.album_name AS album,
COUNT(F.song_id) AS favoritadas
FROM SpotifyClone.albums AS A
INNER JOIN SpotifyClone.songs AS S
ON A.album_id = S.album_id
INNER JOIN SpotifyClone.favorites_songs AS F
ON S.song_id = F.song_id
GROUP BY A.album_name
ORDER BY favoritadas DESC
LIMIT 3;