#Query for questions 3a - 3b of homework
#By Terry Leone

USE sakila;

#Item 3a - Shows description as been added and is a column of nulls
ALTER TABLE actor
ADD description BLOB;

select * from actor
where actor_id <= 5;

#Item 3b - Shows that description has been dropped
ALTER TABLE actor
DROP COLUMN description;

select * from actor
where actor_id <=5;

