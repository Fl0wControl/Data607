CREATE TABLE movies(
movie_id SERIAL PRIMARY KEY NOT NULL,
title VARCHAR(100) NOT NULL ,
genre VARCHAR(50) NOT NULL ,
rating VARCHAR(5) NOT NULL ,
year_released INTEGER NOT NULL ,
total_grossed INTEGER NOT NULL 
);

CREATE TABLE friends(
friend_id SERIAL PRIMARY KEY NOT NULL ,
first_name VARCHAR(50) NOT NULL ,
last_name VARCHAR(50) NOT NULL 
);

CREATE TABLE ratings(
rating_id SERIAL PRIMARY KEY NOT NULL ,
rating INTEGER NOT NULL ,
movie_id INTEGER REFERENCES movies(movie_id) NOT NULL ,
friend_id INTEGER REFERENCES friends(friend_id) NOT NULL 
);

INSERT INTO movies (title, genre, rating, year_released, total_grossed) VALUES 
('Finding Dory', 'Comedy', 'PG', 2016, 479600783 ),
('Captain America','Action', 'PG-13', 2016, 407831122 ),
('The Jungle Book', 'Adventure', 'PG', 2016, 363558305 ),
('Deadpool', 'Action', 'R', 2016, 363024263 ),
('The Secret Life of Pets', 'Comedy', 'PG', 2016, 359818405 ),
('Zootopia', 'Comedy', 'PG', 2016, 341264012 );

INSERT INTO friends (first_name, last_name) VALUES
('John', 'Smon'),
('Abigale', 'Knightendale'),
('Bob', 'Barker'),
('Jim', 'Halpert'),
('Dwight', 'Schrute');

INSERT INTO ratings (rating, movie_id, friend_id) VALUES
(1, 1, 1),
(5, 2, 1),
(3, 3, 1),
(2, 4, 1),
(3, 5, 1),
(4, 6, 1),
---
(2, 1, 2),
(5, 2, 2),
(4, 3, 2),
(1, 4, 2),
(1, 5, 2),
(5, 6, 2),
---
(5, 1, 3),
(1, 2, 3),
(3, 3, 3),
(5, 4, 3),
(3, 5, 3),
(2, 6, 3),
---
(5, 1, 4),
(3, 2, 4),
(5, 3, 4),
(3, 4, 4),
(1, 5, 4),
(5, 6, 4),
---
(4, 1, 5),
(5, 2, 5),
(1, 3, 5),
(4, 4, 5),
(3, 5, 5),
(1, 6, 5);