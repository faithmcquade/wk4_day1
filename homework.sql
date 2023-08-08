-- 1.How many actors are there with the last name 'Wahlberg'?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Answer: 2

-- 2.How many payments were made between $3.99 and $5.99?
SELECT payment_id, amount
FROM payment 
WHERE amount BETWEEN 3.99 and 5.99;

-- Answer: 2

--3.What film does the store have the most of?(search in inventory)
SELECT film_id, count(inventory_id) AS num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC
LIMIT 10;

-- Answer: 745, 378, 91, 220, 382, 350, 266, 764, 638, 127

--4.How many customers have the last name 'William'?
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

--Answer: None

--5.What store employee (get the id) sold the most rentals?

SELECT staff_id, first_name, last_name
FROM staff;
-- 1=Mike Hillyer 2=Jon Stephens

SELECT count(staff_id), rental_id
FROM rental
GROUP BY staff_id, rental_id
ORDER BY count(staff_id) DESC;

-- Answer: i'm stuck...

--6.How many different district names are there?
SELECT count(district)
FROM address;

--Answer: 603

--7.What film has the most actors in it? (use film_actor table and get film_id)
SELECT title, actor_id
FROM film_actor, film
GROUP BY title, actor_id
ORDER BY max(actor_id) DESC
LIMIT 1;

--Answer: Soldiers Evolution

--8.From store_id 1, how many customers have a last name ending with 'es'?(use customer table)
SELECT store_id , last_name
FROM customer
WHERE last_name like '%es';

--Answer: 13

--9.How many payment amounts(4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount
FROM payment
GROUP BY customer_id BETWEEN 380 and 430, amount
HAVING amount > 250;

--Answer: 3

--10.Within the film table, how many rating categories are there? and what rating has the most movies total?
SELECT rating, film_id
FROM film
group by rating, film_id
order by max(film_id) DESC;


--Answer: There's 5 rating categories. The NC-17 rating has the most movies total: 1000.






