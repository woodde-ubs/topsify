# Contributing

## Day 1

TODO: Add workshop instructions

## Day 2

TODO: Add workshop instructions

## Day 3

There's an important feature we need to get off the ground: playlists.

```mermaid
erDiagram
  users {
      integer id PK "Primary Key"
      text username "Unique"
      text firstName
      text lastName
      text email "Unique"
      text avatar
      text password
  }

  playlists {
      integer id PK "Primary Key"
      integer user_id FK "Foreign Key"
      text name
  }

  playlist_tracks {
      integer playlist_id FK "Foreign Key"
      text track_id FK "Foreign Key"
  }

  tracks {
      text id PK "Primary Key"
      text album_id FK "Foreign Key"
      text name
      boolean explicit
      text preview_url
      integer disc_number
      integer track_number
      real duration_ms
  }

  users ||--o{ playlists : "owns"
  playlists ||--o{ playlist_tracks : "contains"
  tracks ||--o{ playlist_tracks : "included_in"
```

Write some migrations to create the `playlists` and `playlist_tracks` tables.

Write some seed data to model users creating playlists and adding tracks.
