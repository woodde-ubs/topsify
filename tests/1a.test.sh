#!/bin/bash

result=$(sqlite3 db/db.sqlite < exercises/1a.sql);

echo "$result" | diff - "$(dirname "$0")/1a.txt";

exit $?
