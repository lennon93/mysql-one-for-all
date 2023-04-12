SELECT Ar.artist_name AS artista,
CASE
WHEN (COUNT(F.song_id)) >= 5 THEN 'A'
WHEN (COUNT(F.song_id)) = 3 OR (COUNT(F.song_id)) = 4 THEN 'B'
WHEN (COUNT(F.song_id)) = 1 OR (COUNT(F.song_id)) = 2 THEN 'C'
ELSE '-'
END AS ranking
 FROM SpotifyClone.artists AS Ar
LEFT JOIN SpotifyClone.albums AS A
ON A.artist_id = Ar.artist_id
LEFT JOIN SpotifyClone.songs AS S 
ON A.album_id = S.album_id
LEFT JOIN SpotifyClone.favorites_songs AS F 
ON S.song_id = F.song_id 
GROUP BY Ar.artist_name
ORDER BY COUNT(F.song_id) DESC, artist_name;