SELECT Ar.artist_name AS artista, A.album_name AS album
FROM SpotifyClone.artists AS Ar
INNER JOIN SpotifyClone.albums AS A
ON Ar.artist_id = A.artist_id
WHERE artist_name = 'Elis Regina'
GROUP BY A.album_id
ORDER BY artist_name, album_name;