--1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';
-- ANSWER: 2

--2. How many payments were made between $3.99 and $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--ANSWER: 5607

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id);
--ANSWER: multiple IDs with 8 films

--4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'William';
--ANSWER: 0

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;
--ANSWER: ID#1 - 8040

--6. How many different district names are there?
SELECT district
FROM address
GROUP BY district;
--ANSWER: 378

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
--ANSWER: FILM_ID-508, 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es'
ORDER BY store_id;
--ANSWER: 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
SELECT COUNT(rating), rating
FROM film
GROUP BY rating;
--ANSWER: 5 different types of rating, PG-13 has the most ratings at 223