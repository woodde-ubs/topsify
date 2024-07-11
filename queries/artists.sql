-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/artists.sql
.mode json
SELECT * from artists
WHERE name like 'B%'
OR name like 'G%'
OR name like 'M%'
ORDER BY name desc;
