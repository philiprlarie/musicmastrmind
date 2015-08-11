# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
username        | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique
user image?     | url??     |  

## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
writer      | string    |
creator_id  | integer   | not null, foreign key (references users)
artist_id   | integer   | not null, foreign key
album_id    | integer   | not null, foreign key
track_number| integer   | not null, unique (in album)

## line
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
order       | integer   | not null, unique (in song)
song_id     | integer   | not null, foreign key

## line_interpretation
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | string    | not null
line_id     | integer   | not null, foreign key
creator_id  | integer   | not null, foreign key (references users)

## artists
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, unique

## album
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, unique
release_date| date      |
image_url   | string    |
artist_id   | integer   | not null, foreign key

## genres
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, unique

## genre_taggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
song_id     | integer   | not null, foreign key (references posts)
genre_id    | integer   | not null, foreign key (references tags)

## song_comments
column name | data type | details
-------------------|-----------|-----------------------
id                 | integer   | not null, primary key
body               | string    | not null
user_id            | integer   | not null, foreign key
song_id            | integer   | not null, foreign key
parent_comment_id  | integer   | self referential key

## line_comments
column name | data type | details
-------------------|-----------|-----------------------
id                 | integer   | not null, primary key
body               | string    | not null
user_id            | integer   | not null, foreign key
line_id            | integer   | not null, foreign key
parent_comment_id  | integer   | self referential key
