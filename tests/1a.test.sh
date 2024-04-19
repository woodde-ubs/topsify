#!/bin/bash

sqlite3 db/db.sqlite < exercises/1a.sql | diff - "$(dirname "$0")/1a.txt";
