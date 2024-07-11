-- List the names of the 10 newest albums in the database

select name from albums
order by release_date desc
limit 10;
