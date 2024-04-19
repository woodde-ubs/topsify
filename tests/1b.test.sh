#!/bin/bash

sqlite3 db/db.sqlite < exercises/1b.sql | diff - "$(dirname "$0")/1b.txt";