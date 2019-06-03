-- DROP DATABASE bookmarks;
-- CREATE DATABASE bookmarks ENCODING 'UTF8';
CREATE TABLE bookmarks (
   id serial primary key,
   url varchar(60)
);