#!/bin/bash

sqlite3 db/db.sqlite < exercises/6a.sql | diff - "$(dirname "$0")/6a.txt";