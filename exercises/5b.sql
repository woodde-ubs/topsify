-- Find the average valence of songs in the database
-- (Hint: use the features table, no need to JOIN):

SELECT AVG(valence) AS AverageValence
FROM features;
