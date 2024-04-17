-- List the name of every album in the database
-- Include the artist name

SELECT albums.name AS AlbumName, artists.name AS ArtistName
FROM albums
INNER JOIN artists ON albums.artist_id = artists.id;
