-- Yeah we didn't set up cascading deletes :'(
-- Could you delete Dua Lipa's albums, too?
-- Don't worry about the tracks, I'll get someone else to do that. kthx!


--- DELETE albums
-- FROM albums
-- JOIN artists ON artists.id = albums.artist_id
-- WHERE artists.name = 'Dua Lipa';

DELETE FROM albums
WHERE artist_id IN (
    SELECT artists.id
    FROM artists
    WHERE artists.name = 'Dua Lipa'
)