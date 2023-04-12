SELECT Ar.artist_name AS artista, A.album_name AS album,
COUNT(F.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artists AS Ar
INNER JOIN SpotifyClone.albums AS A
ON Ar.artist_id = A.artist_id
INNER JOIN SpotifyClone.artists_followers AS F
ON Ar.artist_id = F.artist_id
GROUP BY A.album_id
ORDER BY pessoas_seguidoras DESC, artist_name, album_name;
