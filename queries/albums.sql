-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/albums.sql
.mode json

select 
albums.id as id,
albums.name as name,
albums.release_date as release_date,
albums.image_url as image_url,
artists.id as artist_id,
artists.name as artist_name
from albums
join artists on artists.id = albums.artist_id
order by name;