-- Part 1 --
SELECT * FROM owners o FULL OUTER JOIN vehicles v ON o.id = v.owner_id;

-- Part 2 --
SELECT first_name, last_name, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY (first_name, last_name) ORDER BY first_name;

-- Part 3 --
SELECT first_name, last_name, ROUND(AVG(PRICE)) AS average, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id=v.owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY first_name DESC;

