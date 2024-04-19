#!/bin/bash

sqlite3 db/db.sqlite < exercises/7b.sql

sqlite3 db/db.sqlite "SELECT email FROM users ORDER BY email;" | diff - "$(dirname "$0")/7b.txt";