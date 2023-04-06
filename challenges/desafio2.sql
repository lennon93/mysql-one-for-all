SELECT COUNT(song_name) AS cancoes,
(SELECT COUNT(DISTINCT artist_id) 
FROM SpotifyClone.artists) AS artistas,
 COUNT(DISTINCT album_id) AS albuns 
 FROM SpotifyClone.songs;