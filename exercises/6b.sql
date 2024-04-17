-- Create a list of all album names
-- Include the total duration of the album
-- (Hint: JOIN albums to tracks, GROUP by album_id, use SUM)

SELECT albums.name AS AlbumName, SUM(tracks.duration_ms) AS TotalDuration
FROM albums
INNER JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.id, albums.name;
