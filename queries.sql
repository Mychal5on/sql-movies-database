-- 1. Lista wszystkich filmów z rokiem, gatunkiem i nazwą reżysera
SELECT 
    m.title AS "Tytuł filmu",
    m.year AS "Rok",
    m.genre AS "Gatunek",
    d.first_name || ' ' || d.last_name AS "Reżyser"
FROM movies m
JOIN movie_director md ON m.id = md.movie_id
JOIN directors d ON md.director_id = d.id;

-- 2. TOP 3 najlepiej oceniane filmy (średnia ocen)
SELECT 
    m.title AS "Film",
    ROUND(AVG(r.rating), 2) AS "Średnia ocena"
FROM movies m
JOIN ratings r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY AVG(r.rating) DESC
LIMIT 3;

-- 3. Liczba filmów wyreżyserowanych przez każdego reżysera
SELECT 
    d.first_name || ' ' || d.last_name AS "Reżyser",
    COUNT(md.movie_id) AS "Liczba filmów"
FROM directors d
LEFT JOIN movie_director md ON d.id = md.director_id
GROUP BY d.id;

-- 4. Średnia ocena filmów wg gatunku
SELECT 
    m.genre AS "Gatunek",
    ROUND(AVG(r.rating), 2) AS "Średnia ocena"
FROM movies m
JOIN ratings r ON m.id = r.movie_id
GROUP BY m.genre;

-- 5. Filmy wydane po 2010 roku z oceną powyżej 8
SELECT 
    m.title AS "Film",
    m.year AS "Rok",
    ROUND(AVG(r.rating), 2) AS "Średnia ocena"
FROM movies m
JOIN ratings r ON m.id = r.movie_id
WHERE m.year > 2010
GROUP BY m.id
HAVING AVG(r.rating) > 8;

-- 6. Liczba ocen dla każdego filmu
SELECT 
    m.title AS "Film",
    COUNT(r.id) AS "Liczba ocen"
FROM movies m
LEFT JOIN ratings r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY COUNT(r.id) DESC;

-- 7. Wyszukiwanie filmów według reżysera (np. Nolan)
SELECT 
    m.title AS "Film",
    m.year AS "Rok"
FROM movies m
JOIN movie_director md ON m.id = md.movie_id
JOIN directors d ON md.director_id = d.id
WHERE d.last_name = 'Nolan';
