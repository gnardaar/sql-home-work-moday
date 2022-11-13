--question 1
select * from actor where first_name, last_name  like 'Wahlberg'

--question2
select count(amount) from payment where amount between 3.99 and 5.99;


--question 3
select * from inventory 


--question 4
select last_name,first_name from customer where last_name and first_name  = 'William'
SELECT last_name, first_name
FROM customer
WHERE first_name LIKE 'William';
SELECT *
FROM rental;

--question 5
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id;
SELECT *
FROM rental;

--question 6
SELECT COUNT(DISTINCT district)
FROM address;

--question 7
SELECT *
FROM film_actor;
SELECT  film_id, COUNT(actor_id) AS total_actors
FROM film_actor 
GROUP BY film_id
ORDER BY total_actors DESC;

--question 8
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

--question 9
SELECT *
FROM payment;

SELECT amount, COUNT( amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING COUNT(amount) > 250
ORDER BY amount;

--question 10
SELECT *
FROM film;

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT COUNT(DISTINCT film_id), rating 
FROM film
GROUP BY rating;