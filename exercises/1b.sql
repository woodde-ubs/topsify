-- Retrieve a list of the "id" and "name" of all explicit tracks in the
-- database

select id, name from tracks where explicit = true;