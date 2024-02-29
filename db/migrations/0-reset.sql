DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS tracks;
DROP TABLE IF EXISTS features;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    avatar TEXT,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    url TEXT
);

CREATE TABLE IF NOT EXISTS albums (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    artist_id TEXT NOT NULL,
    release_date TEXT NOT NULL,
    image_url TEXT,
    FOREIGN KEY (artist_id) REFERENCES artists(id)
);

CREATE TABLE IF NOT EXISTS tracks (
    id TEXT PRIMARY KEY,
    album_id TEXT NOT NULL,
    name TEXT NOT NULL,
    explicit BOOLEAN,
    preview_url TEXT,
    disc_number INTEGER,
    track_number INTEGER,
    duration_ms REAL,
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS features (
  id TEXT PRIMARY KEY,
  danceability REAL,
  energy REAL,
  key INTEGER,
  loudness REAL,
  mode INTEGER,
  speechiness REAL,
  acousticness REAL,
  instrumentalness REAL,
  liveness REAL,
  valence REAL,
  tempo REAL,
  time_signature INTEGER,
  FOREIGN KEY (id) REFERENCES tracks(id)
);