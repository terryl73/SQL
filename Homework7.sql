#Query for questions 7a - 7h of homework
#By Terry Leone

USE sakila;

#Item 7a
SELECT title, language_id
FROM film
WHERE (title LIKE 'K%' OR title LIKE 'Q%') AND language_id IN (
																SELECT language_id 
																FROM language
																WHERE name = "English");
                                                                
#Item 7b

SELECT Actor_Name
FROM actor
WHERE actor_id IN 
 (
	SELECT actor_id
	FROM film_actor 
	WHERE film_id IN 
      (
		SELECT film_id 
		FROM film 
		WHERE title = "Alone Trip"
        )
  );


#Item 7c

SELECT customer.first_name, customer.last_name, customer.email, country.country
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city on address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id
WHERE country.country = "Canada";

#Item 7d
SELECT film.title, category.name
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE category.name = "Family";


#Item 7e
SELECT film.title, count(rental.rental_id) as 'Rentals'
FROM film
INNER JOIN inventory on film.film_id = inventory.film_id
INNER JOIN rental on inventory.inventory_id = rental.inventory_id
GROUP BY film.title
ORDER BY Rentals DESC;

#Item 7f
SELECT store.store_id, Sum(payment.amount)
FROM payment
INNER JOIN staff ON payment.staff_id = staff.staff_id
INNER JOIN store ON staff.store_id = store.store_id
GROUP BY store.store_id;


#Item 7g
SELECT store.store_id, city.city, country.country
FROM store
INNER JOIN address ON store.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country on city.country_id = country.country_id;


#Item 7h
SELECT category.name, sum(payment.amount) as 'Revenue'
FROM payment
INNER JOIN rental on payment.rental_id = rental.rental_id
INNER JOIN inventory on rental.inventory_id = inventory.inventory_id
INNER JOIN film_category on inventory.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY Revenue DESC
LIMIT 5;