#!/bin/bash

sqlite3 db/db.sqlite < exercises/5b.sql | diff - "$(dirname "$0")/5b.txt";