-- How many tracks are longer than 5 minutes?

SELECT count(id)
FROM tracks
WHERE duration_ms/60000 > 5;
-- 5 * 60 * 1000