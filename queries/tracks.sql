-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/tracks.sql
.mode json
SELECT * from tracks
WHERE duration_ms > 225000
AND explicit = false
ORDER BY name
limit 10 offset 29 * 10;
