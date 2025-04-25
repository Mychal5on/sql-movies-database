INSERT INTO directors (first_name, last_name, country) VALUES
('Christopher', 'Nolan', 'UK'),
('Quentin', 'Tarantino', 'USA'),
('Hayao', 'Miyazaki', 'Japan'),
('Greta', 'Gerwig', 'USA');

INSERT INTO movies (title, year, genre) VALUES
('Inception', 2010, 'Sci-Fi'),
('Pulp Fiction', 1994, 'Crime'),
('Spirited Away', 2001, 'Animation'),
('Barbie', 2023, 'Comedy'),
('Interstellar', 2014, 'Sci-Fi'),
('Kill Bill', 2003, 'Action');

INSERT INTO movie_director (movie_id, director_id) VALUES
(1, 1), -- Inception → Nolan
(2, 2), -- Pulp Fiction → Tarantino
(3, 3), -- Spirited Away → Miyazaki
(4, 4), -- Barbie → Gerwig
(5, 1), -- Interstellar → Nolan
(6, 2); -- Kill Bill → Tarantino

INSERT INTO ratings (movie_id, rating) VALUES
(1, 9),
(1, 8),
(1, 10),
(2, 9),
(2, 9),
(3, 10),
(3, 9),
(4, 7),
(4, 6),
(5, 10),
(5, 10),
(5, 9),
(6, 8),
(6, 7);
