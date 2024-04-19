#!/bin/bash

sqlite3 db/db.sqlite < exercises/3b.sql | diff - "$(dirname "$0")/3b.txt";