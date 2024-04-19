#!/bin/bash

sqlite3 db/db.sqlite < exercises/8b.sql

sqlite3 db/db.sqlite "SELECT COUNT(*) FROM albums;" | diff - "$(dirname "$0")/8b.txt";
