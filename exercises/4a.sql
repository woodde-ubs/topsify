-- List the name of every album in the database
-- Include the artist name
-- (Make sure to select the album name first, then the artist name)

SELECT al.name, ar.name
FROM albums al
JOIN artists ar
ON ar.id = al.artist_id;