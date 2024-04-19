#!/bin/bash

sqlite3 db/db.sqlite < exercises/2b.sql | diff - "$(dirname "$0")/2b.txt";
