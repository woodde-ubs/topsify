-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first

SELECT albums.name, sum(tracks.duration_ms) AS sum_tracks
FROM albums
JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.id
ORDER by sum_tracks desc;
