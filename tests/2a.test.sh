#!/bin/bash

sqlite3 db/db.sqlite < exercises/2a.sql | diff - "$(dirname "$0")/2a.txt";