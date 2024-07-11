-- Retrieve a list of all albums
-- Sort by their release date, with the newest album first
-- Include all columns

-- .headers on
select * from albums
order by release_date desc;