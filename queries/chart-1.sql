.mode json

select 
-- tracks.name as track_name
-- albums.name as album_name
artists.name as artist_name,
count(tracks.id) as explicit_track_count
from tracks
join albums on tracks.album_id = albums.id
join artists on albums.artist_id = artists.id
where tracks.explicit
group by artists.id
order by explicit_track_count desc;
