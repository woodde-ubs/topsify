#!/bin/bash

sqlite3 db/db.sqlite < exercises/4a.sql | diff - "$(dirname "$0")/4a.txt";