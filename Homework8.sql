#Query for questions 8a - 8c of homework
#By Terry Leone

USE sakila;

#Item 8a
CREATE VIEW TopRev AS
SELECT category.name, sum(payment.amount) as 'Revenue'
FROM payment
INNER JOIN rental on payment.rental_id = rental.rental_id
INNER JOIN inventory on rental.inventory_id = inventory.inventory_id
INNER JOIN film_category on inventory.film_id = film_category.film_id
INNER JOIN category on film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY Revenue DESC
LIMIT 5;

SELECT * FROM TopRev;

DROP VIEW TopRev;