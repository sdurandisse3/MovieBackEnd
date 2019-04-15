DROP DATABASE IF EXISTS movieapp;
CREATE DATABASE movieapp;

\c movieapp;

CREATE TABLE movies (
    id SERIAL PRIMARY KEY NOT NULL ,
    title VARCHAR NOT NULL,
    genre_id INT UNIQUE NOT NULL,
    img_url VARCHAR NOT NULL
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY NOT NULL ,
    genrename VARCHAR NOT NULL
);

CREATE TABLE ratings(
    id SERIAL PRIMARY KEY NOT NULL,
    stars INT NULL,
    movie_id INT REFERENCES movies(id)

);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY NOT NULL ,
    text VARCHAR NOT NULL,
    movie_id INT REFERENCES movies(id)
);


INSERT INTO movies(title, genre_id, img_url) 
VALUES ('The Meg',1, 'https://m.media-amazon.com/images/M/MV5BMjg0MzA4MDE0N15BMl5BanBnXkFtZTgwMzk3MzAwNjM@._V1_.jpg'),
('Into the Woods',2, 'https://m.media-amazon.com/images/M/MV5BMTY4MzQ4OTY3NF5BMl5BanBnXkFtZTgwNjM5MDI3MjE@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
('Paid in Full',3, 'https://m.media-amazon.com/images/M/MV5BOTQ1NTUwNTAzN15BMl5BanBnXkFtZTYwMzM0Njk5._V1_.jpg'),
('Pootie Tang',4,'https://m.media-amazon.com/images/M/MV5BMWY2ZGU3ZDAtN2NhMy00NjRjLWE5ZDgtZTRlM2QxMTBjZWYwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg'),
('Jaws',5, 'https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX651_CR0,0,651,999_AL_.jpg'),
('Jurassic World: Fallen Kingdom',6, 'https://m.media-amazon.com/images/M/MV5BNzIxMjYwNDEwN15BMl5BanBnXkFtZTgwMzk5MDI3NTM@._V1_.jpg'),
('47 Meters Down',7,'https://m.media-amazon.com/images/M/MV5BOGJlNDJkZmEtMjUwNS00ZWViLWIyZGEtN2Y5ZjZlNDE1NWJkXkEyXkFqcGdeQXVyNDg2MjUxNjM@._V1_SY1000_SX675_AL_.jpg'),
('Boyz N The Hood',8, 'https://m.media-amazon.com/images/M/MV5BZmRjNDI5NTgtOTIwMC00MzJhLWI4ZTYtMmU0ZTE3ZmRkZDNhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
('Straight Outta Compton',9,'https://m.media-amazon.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_.jpg'),
('CoCo',10,'https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_SY1000_CR0,0,699,1000_AL_.jpg');

INSERT INTO genres ( genrename ) 
VALUES ('Action'),
('Animation'),
('Adventure'),
('Comedy'),
('Thriller');

INSERT INTO ratings (stars, movie_id) 
VALUES(5.7,1),
(6.0,2),
(7.1,3),
(5.2,4),
(8.0,5),
(6.2,6),
(5.6,7),
(7.8,8),
(7.9,9),
(8.4,10),
(1,10),
(6.5,7),
(7,2),
(7.5,3),
(8,4),
(8.5,5),
(9,6),
(9.5,7),
(10,8),
(10.5,9);

INSERT INTO comments (text, movie_id) 
VALUES('Great Movie',1),
('Amazing Film',2),
('What a waste of money and time',2),
('I hope theres another one',5),
('Classic',3),
('Disney never ceazes to amaze me',10),
('Great emotional ending',8),
('Best movie i have seen all year',6),
('Great Action Scenes',5),
('Had me at these edge of my seat the entire time',2),
('eeh the older version was better',5),
('Naaa that was AMAZING !',4),
(' sah-dah-tay',4),
('This for all my homies on the west-side',9),
('I would honestly still go',7);
