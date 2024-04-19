#!/bin/bash

sqlite3 db/db.sqlite < exercises/7a.sql

sqlite3 db/db.sqlite "SELECT * FROM users WHERE firstName IN ('Vincenza', 'Lionel');" | diff - "$(dirname "$0")/7a.txt";
