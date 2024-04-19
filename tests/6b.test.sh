#!/bin/bash

sqlite3 db/db.sqlite < exercises/6b.sql | diff - "$(dirname "$0")/6b.txt";