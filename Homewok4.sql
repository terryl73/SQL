#Query for questions 4a - 4d of homework
#By Terry Leone

USE sakila;

SELECT last_name, count(last_name) as "CLN" FROM actor
GROUP BY last_name;

SELECT last_name, count(last_name) as "CLN" FROM actor
GROUP BY last_name
HAVING CLN >=2;

UPDATE actor
SET first_name = "GROUCHO", Actor_Name = "GROUCHO WILLIAMS"
WHERE Actor_Name = "HARPO WILLIAMS";

SELECT * FROM actor WHERE Actor_Name = "GROUCHO WILLIAMS";

UPDATE actor
SET first_name = "HARPO"
WHERE first_name = "GROUCHO";

SELECT * FROM actor WHERE first_name = "HARPO";

