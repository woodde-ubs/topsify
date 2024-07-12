.mode json

select 
artists.name as artist_name,
albums.name as album_name,
avg(features.danceability) as average_danceability,
avg(features.energy) as average_energy,
avg(features.speechiness) as average_speechiness,
avg(features.acousticness) as average_acousticness, 
avg(features.liveness) as average_liveness
from artists
join albums on albums.artist_id = artists.id
join tracks on tracks.album_id = albums.id
join features on features.track_id = tracks.id
group by albums.id
order by artist_name desc;