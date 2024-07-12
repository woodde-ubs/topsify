
.mode json

select 
albums.name as album_name,
avg(features.loudness) as average_loudness,
albums.release_date as release_date
from albums
join artists on albums.artist_id = artists.id
join tracks on tracks.album_id = albums.id
join features on features.track_id = tracks.id
group by albums.id
-- order by release_date;