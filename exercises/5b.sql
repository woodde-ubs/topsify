-- Find the average valence of songs in the database
-- https://community.spotify.com/t5/Spotify-for-Developers/Valence-as-a-measure-of-happiness/td-p/4385221
-- (Hint: use the features table, no need to JOIN)

SELECT AVG(valence)
FROM features;