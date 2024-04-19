#!/bin/bash

if [ $# -eq 0 ];
  then exercises="1a 1b 2a 2b 3a 3b 4a 4b 5a 5b 6a 6b 7a 7b 8a 8b 9a 9b";
  else exercises="$@";
fi

echo $exercises
for arg in $exercises;
do
  sqlite3 db/db.sqlite < db/reset.sql
  bash -c "./tests/$arg.test.sh" | diff - "./tests/$arg.txt" &> /dev/null
done
