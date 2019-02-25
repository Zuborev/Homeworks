1
SELECT track.name, artist.name 
FROM track 
INNER JOIN track_artist ON track_artist.track_id = track.id 
INNER JOIN  artist ON track_artist.artist_id = artist.id 
WHERE  artist.name = 'Eminem';
2
SELECT track.name as SONGS, album.name as ALBUM, artist.name as ARTIST
FROM track
INNER JOIN album ON track.id_album = album.id 
INNER JOIN track_artist ON track_artist.track_id = track.id 
INNER JOIN  artist ON track_artist.artist_id = artist.id
ORDER BY artist.name ASC, album.name ASC;
3
SELECT artist.name as ARTIST, track.id as NUM, track.name as SONGS, album.name as ALBUM, year
FROM track
INNER JOIN album ON track.id_album = album.id 
INNER JOIN track_artist ON track_artist.track_id = track.id 
INNER JOIN  artist ON track_artist.artist_id = artist.id
ORDER BY artist.name ASC, year ASC, track.id ASC;

SELECT genre.name as GENRE, track.id as NUM, track.name as SONGS, album.name as ALBUM, year, artist.name as ARTIST
FROM track
INNER JOIN genre ON track.id_genre = genre.id
INNER JOIN album ON track.id_album = album.id 
INNER JOIN track_artist ON track_artist.track_id = track.id 
INNER JOIN  artist ON track_artist.artist_id = artist.id
ORDER BY genre, year DESC;
3.1
SELECT count(track.name) as NUM, genre.name as GENRE, album.name as ALBUM, artist.name as ARTIST
FROM track
INNER JOIN genre ON track.id_genre = genre.id
INNER JOIN album ON track.id_album = album.id 
INNER JOIN track_artist ON track_artist.track_id = track.id 
INNER JOIN  artist ON track_artist.artist_id = artist.id
WHERE  artist.name = 'Linkin Park'
GROUP BY album, genre;
