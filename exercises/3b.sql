-- Suppose we sort tracks by their duration (ascending) and into pages of length 5
-- Find the 4th page
-- Include all columns

select * from tracks
order by duration_ms asc
limit 5 offset 3 * 5;

