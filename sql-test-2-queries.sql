--alef
SELECT genre, COUNT(*) AS count FROM movies
GROUP BY genre;

--bet 
SELECT year, SUM(revenue) AS total_revenue FROM movies
GROUP BY year;

--gimel
SELECT genre, AVG(revenue) AS average_revenue FROM movies
GROUP BY genre;

--daled
SELECT genre, language, AVG(revenue) AS average_revenue FROM movies
GROUP BY genre, language;

--hei
SELECT language, COUNT(*) AS count FROM movies
GROUP BY language
ORDER BY count ASC
LIMIT 1;

--vav
SELECT country, COUNT(*) AS count FROM movies
GROUP BY country
ORDER BY count DESC
LIMIT 1;

--zain
SELECT genre FROM movies
GROUP BY genre
HAVING COUNT(*) > 2;

--chet
SELECT year FROM movies
GROUP BY year
HAVING SUM(revenue) > 1000;

--tet
SELECT language FROM movies
GROUP BY language
HAVING COUNT(*) >= 3;