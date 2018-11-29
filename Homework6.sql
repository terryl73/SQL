#Query for questions 6a - 6e of homework
#By Terry Leone

USE sakila;

#Item 6a
SELECT staff.first_name, staff.last_name, address.address
FROM staff
JOIN address
ON staff.address_id = address.address_id;

select * from staff;


#Item 6b
SELECT staff.first_name, staff.last_name, sum(payment.amount)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
where month(payment.payment_date) = 8
GROUP BY payment.staff_id;

#Item 6c
SELECT film.title, count(film_actor.actor_id)
FROM film
JOIN film_actor
ON (film.film_id = film_actor.film_id)
GROUP BY film_actor.film_id;



#Item 6D
SELECT film_id, COUNT(film_id) 
FROM inventory
WHERE film_id IN (
					SELECT film_id 
                    FROM film 
                    WHERE title = "Hunchback Impossible");
                    

#Item 6e
SELECT customer.first_name, customer.last_name, sum(payment.amount)
FROM customer
JOIN payment
ON (customer.customer_id = payment.customer_id)
GROUP BY payment.customer_id
ORDER BY customer.last_name;



