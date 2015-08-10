# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
username        | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

## songs
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
creator_id  | integer   | not null, foreign key (references users)
title       | string    | not null
artist_id   | integer   | not null
writer      | string    |

## song_comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
body        | string    | not null

## line
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
song_id     | integer   | not null, foreign key (references users)
body        | string    | not null
order       | integer   | not null, unique (in song)

## line_interpretation
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
line_id     | integer   | not null, foreign key (references users)
body        | string    | not null
creator_id  | integer   | not null, foreign key (references users)

## artists
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null, unique

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
