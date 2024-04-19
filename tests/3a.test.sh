#!/bin/bash

sqlite3 db/db.sqlite < exercises/3a.sql | diff - "$(dirname "$0")/3a.txt";
