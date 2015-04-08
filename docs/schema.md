# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null
email           | string    | not null
password_digest | string    | not null
session_token   | string    | not null

## profile
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
description | string    |

## reservation
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
reserver_id | integer   | not null, foreign key (references users)
reserved?   | boolean   | default: pending ???

## requests
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
status      | string    | default: true

## listings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
description | string    |
price       | integer   | not null
title       | string    | not null
address     | string    | not null
capacity    | integer   | not null

## images
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
listing_id  | integer   | not null, foreign key (references listing)
picture     | integer   | not null

## location
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
listing_id  | integer   | not null, foreign key (references listing)
longitude   | integer   | not null
latitude    | integer   | not null

## comments
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
author_id       | integer   | not null, foreign key (references user)
profile_id      | string    | not null, foreign key (references user)
listing_id      | string    | not null, foreign key (references listing)
content         | string    | not null
rating          | integer   | not null
