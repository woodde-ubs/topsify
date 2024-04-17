#!/bin/bash

sqlite3 db/db.sqlite < exercises/8a.sql

sqlite3 db/db.sqlite "SELECT COUNT(*) FROM artists;"