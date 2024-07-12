-- Create a list of all artist names
-- Include a count of how many albums they have released
-- Order your results by artist name in ascending order
-- (You should group the artists by id, not by name)

SELECT artists.name, count(albums.id)
FROM artists
JOIN albums ON artists.id = albums.artist_id
GROUP BY artists.id
ORDER BY artists.name;
