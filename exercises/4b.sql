-- List the 10 slowest tracks in the database
-- Include the track id, track title and track tempo

SELECT tracks.id AS TrackID, tracks.name AS TrackTitle, features.tempo AS TrackTempo
FROM tracks
JOIN features ON tracks.id = features.track_id
ORDER BY features.tempo ASC
LIMIT 10;
