#!/bin/bash

sqlite3 db/db.sqlite < exercises/4b.sql | diff - "$(dirname "$0")/4b.txt";
