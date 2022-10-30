select * from actor where first_name, last_name  like 'Wahlberg'

select count(amount) from payment where amount between 3.99 and 5.99;


 
select * from inventory 
--Inventoty in the store has 8 copies of 72 different films 


select last_name,first_name from customer where last_name and first_name  = 'William'


SELECT last_name, first_name
FROM customer
WHERE first_name LIKE 'William';

SELECT *
FROM rental;

SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id;

SELECT *
FROM rental;

SELECT COUNT(DISTINCT district)
FROM address;

SELECT *
FROM film_actor;

SELECT  film_id, COUNT(actor_id) AS total_actors
FROM film_actor 
GROUP BY film_id
ORDER BY total_actors DESC;

SELECT *
FROM customer;

SELECT first_name, last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id DESC;

SELECT COUNT(last_name) AS es_last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

SELECT *
FROM payment;

SELECT amount, COUNT( amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING COUNT(amount) > 250
ORDER BY amount;

SELECT *
FROM film;

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT COUNT(DISTINCT film_id), rating 
FROM film
GROUP BY rating;