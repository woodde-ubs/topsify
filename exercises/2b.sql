-- Find the track_id of all tracks whose "speechiness" is greater than 0.5
-- but sort them by their danceability, with least danceable tracks first
-- (Hint: use the features table)

select track_id from features
where speechiness > 0.5
order by danceability asc

