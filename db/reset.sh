#!/bin/bash

# Change to the directory of the script
cd "$(dirname "$0")"

# Reset the database and run migrations using relative paths
sqlite3 db.sqlite < migrations/reset.sql
echo "Tables created"

sqlite3 db.sqlite < seeds/artists.sql
echo "Artists seeded"

sqlite3 db.sqlite < seeds/albums.sql
echo "Albums seeded"

sqlite3 db.sqlite < seeds/tracks.sql
sqlite3 db.sqlite < seeds/audio-features.sql
echo "Songs seeded"

sqlite3 db.sqlite < seeds/users.sql
echo "Users seeded"

echo "Database reset and migrations applied"
