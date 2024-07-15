#!/bin/bash

sqlite3 db/db.sqlite < db/reset.sql
sqlite3 db/db.sqlite < db/seeds/users.sql