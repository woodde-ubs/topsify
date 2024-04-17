#!/bin/bash

sudo apt update >/dev/null 2>&1
sudo apt install -y sqlite3 >/dev/null 2>&1

if [ $? -eq 0 ]; then
    sqlite3 db/db.sqlite < db/reset.sql
else
    echo "Failed to install SQLite3, exiting..."
    exit 1
fi