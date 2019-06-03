DROP DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager ENCODING 'UTF8';
CREATE TABLE bookmarks (
   id serial primary key,
   url varchar(60)
);
INSERT INTO bookmarks (url)
VALUES ('https://www.infowars.com') , ('https://www.facebook.com'), ('https://www.google.com');
