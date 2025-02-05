--alef
SELECT tourists.first_name, tourists.last_name, countries.country_name FROM tourists
INNER JOIN countries ON tourists.country_id = countries.id;

--bet
SELECT tourists.first_name, tourists.last_name, tours.tour_name, tours.start_date, tours.end_date FROM tourists
INNER JOIN tours ON tourists.tour_id = tours.id
WHERE tourists.tour_id IS NOT NULL;

--gimel
SELECT tourists.first_name, tourists.last_name, tours.tour_name, tours.start_date, tours.end_date FROM tourists
LEFT JOIN tours ON tourists.tour_id = tours.id;

--daled
SELECT tourists.first_name, tourists.last_name, tours.tour_name, tours.start_date, tours.end_date FROM tourists
JOIN tours ON tourists.tour_id = tours.id;

--hei
SELECT first_name, last_name FROM tourists
WHERE tour_id IS NULL;

-- DELETE FROM tourists
-- WHERE tour_id IS NULL
-- LIMIT 1;

--vav
SELECT tour_name FROM tours
WHERE id NOT IN (SELECT DISTINCT tour_id FROM tourists WHERE tour_id IS NOT NULL);

UPDATE tours
SET start_date = DATE(start_date, '+1 day'), end_date = DATE(end_date, '+1 day')
WHERE id NOT IN (SELECT DISTINCT tour_id FROM tourists WHERE tour_id IS NOT NULL);

--zain
SELECT COUNT(*) FROM tours
WHERE id NOT IN (SELECT DISTINCT tour_id FROM tourists WHERE tour_id IS NOT NULL);

--chet
SELECT tourists.first_name, tourists.last_name, tours.tour_name FROM tourists
CROSS JOIN tours;