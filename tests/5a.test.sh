#!/bin/bash

sqlite3 db/db.sqlite < exercises/5a.sql | diff - "$(dirname "$0")/5a.txt";
