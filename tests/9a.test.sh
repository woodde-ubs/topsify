#!/bin/bash

sqlite3 db/db.sqlite "DROP TABLE IF EXISTS genres;"

sqlite3 db/db.sqlite < exercises/9a.sql

sqlite3 db/db.sqlite "INSERT INTO genres (name) VALUES ('Pop'), ('Rock'), ('Classical'), ('Hip Hop');"

sqlite3 db/db.sqlite "SELECT * FROM genres;"