# Day 3 Workshop

There's an important feature we need to get off the ground: playlists.

```mermaid
erDiagram
  users {
      integer id PK "Primary Key"
      text username "Unique"
      text first_name
      text last_name
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

## Migrations

Write migrations to create the `playlists` and `playlist_tracks` tables.

## Seed data

Write seed data to model users creating playlists and adding tracks to their
playlists.
