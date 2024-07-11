-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/albums.sql
.mode json
SELECT * from albums
where release_date > '2020-03-21'
and name not like 'R%'
ORDER BY artist_id;
