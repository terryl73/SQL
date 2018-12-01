#Query for questions 1a and 1b of homework
#By Terry Leone

use sakila;

#Item 1a
SELECT first_name, last_name FROM actor;

#Item 1b
ALTER TABLE actor
ADD Actor_Name VARCHAR(50);
 
UPDATE actor
SET Actor_Name = CONCAT(first_name, " ", last_name);

