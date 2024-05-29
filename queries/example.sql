-- To execute the query, open a terminal and run:
-- sqlite3 db/db.sqlite < queries/example.sql

SELECT name, duration_ms
FROM tracks
LIMIT 5;

-- To make a report, add an output file:
-- sqlite3 db/db.sqlite < queries/example.sql > reports/example.txt

-- Hint: to make a JSON report, add ".mode json" to the top of the .sql file
-- then output to > reports.json
