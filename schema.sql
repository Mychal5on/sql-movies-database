CREATE TABLE movies (
	id INTEGER PRIMARY KEY,
	title TEXT NOT NULL,
	year INTEGER,
	genre TEXT
);

CREATE TABLE directors (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	country TEXT
);

CREATE TABLE movie_director (
	movie_id INTEGER,
	director_id INTEGER,
	PRIMARY KEY (movie_id, director_id),
	FOREIGN KEY (movie_id) REFERENCES movies(id),
	FOREIGN KEY (director_id) REFERENCES directors(id)
);

CREATE TABLE ratings (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	movie_id INTEGER,
	rating INTEGER CHECK(rating >= 1 AND rating <= 10),
	FOREIGN KEY (movie_id) REFERENCES movies(id)
);