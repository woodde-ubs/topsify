-- Create a list of all artist names
-- Include a count of how many albums they have released
-- (Hint: JOIN artists to albums, GROUP by artist_id, use COUNT)

SELECT artists.name AS ArtistName, COUNT(albums.id) AS AlbumCount
FROM artists
INNER JOIN albums ON artists.id = albums.artist_id
GROUP BY artists.id, artists.name;
