#Query for questions 2a - 2d of homework
#By Terry Leone

USE sakila;

#Item 2a
SELECT actor_id, first_name, last_name from actor
where first_name = "Joe";

#Item 2b
SELECT * from actor
where last_name like '%GEN%';

#Item 2c
SELECT * FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

#Item 2d
Select country_id, country from country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');


