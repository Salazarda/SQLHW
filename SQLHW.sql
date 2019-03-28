-- 1a)
SELECT first_name, last_name 
FROM actor
-- 1b)
ALTER TABLE actor
ADD COLUMN ACTOR_NAME VARCHAR(45) NOT NULL;

SELECT concat(first_name, last_name) AS Actor_Name
FROM actor;
-- 2a)

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'JOE';

-- 2b)

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE "%GEN";

-- 2c)

SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE "%LI";

-- 2d)
SELECT country_id, country
FROM country
WHERE country IN ("Afghanistan, Bangladesh, and China")

-- 3a)
SELECT * FROM actor
ALTER TABLE actor 
ADD description BLOB;

-- 3b)

ALTER TABLE actor
DROP column description;

-- 4a)

SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name;

-- 4b)
ALTER TABLE actor
ADD COLUMN last_name_count INT NOT NULL;
SELECT last_name, COUNT(last_name) AS last_name_count 
FROM actor
WHERE last_name_count > 2;
GROUP BY first_name;

ALTER TABLE actor
DROP column last_name_count

-- 4c) 
UPDATE actor
SET first_name = "HARPO"
WHERE first_name = "GROUCHO"

-- 4d)
UPDATE actor
SET first_name = "HARPO"
WHERE first_name = "GROUCHO"

-- 5a)

-- 6a)
Use `JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address`:
SELECT a.address, s.first_name, s.last_name
FROM staff s
JOIN address a
ON (a.address_id = s.address_id);

-- 6b)
Use `JOIN` to display the total amount rung up by each staff member in August of 2005. Use tables `staff` and `payment`
SELECT p.staff_id, s.staff_id, s.first_name, s.last_name, p.payment_date, p.amount
FROM staff s
JOIN payment p
ON (s.staff_id = p.staff_id)
WHERE ;

-- 6c)
List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join.
SELECT film.title, film_actor.film_id
FROM film
INNER JOIN film_actor ON
film.film_id=film_actor.film_id;

-- 6d)
SELECT film.title, film.film_id, inventory.film_id
FROM film
lEFT JOIN inventory ON
film.film_id=inventory.film_id;
WHERE title = 
SELECT * FROM film_text

DROP VIEW Inventory_Count;
CREATE VIEW Inventory_Count AS    
SELECT     
title, ct 
FROM film
JOIN (
SELECT 
COUNT(film_id) AS ct, film_id
FROM inventory
GROUP BY film_id
)ctSub ON film.film_id = ctSub.film_id
WHERE title = "Hunchback Impossible";

-- 6e)

SELECT p.customer_id, c.customer_id, p.amount, c.last_name
FROM payment p
JOIN customer c
ON c.customer_id=p.customer_id;


-- 7a)
SELECT title FROM film
WHERE title LIKE 'k%';

SELECT title FROM film
WHERE title LIKE 'Q%';

-- 7b)
Use subqueries to display all actors who appear in the film `Alone Trip`
SELECT actor_id, first_name, last_name
 FROM actor
 WHERE actor_id IN
 (
  SELECT film_id
  FROM film
  WHERE film_id IN
  (
   SELECT film_id
   FROM film_actor
   WHERE title = "Alone Trip"
   ));

-- 7c)
SELECT country.country, country.country_id, customer.customer_id, customer.email, customer.first_name, customer.last_name
FROM country 
INNER JOIN customer ON
country.country_id=customer.customer_id
WHERE country = "Canada";

-- 7d)


-- 7e)

-- 7f)
 SELECT COUNT(*)
 FROM customer
 WHERE customer_id IN
 (
  SELECT customer_id
  FROM payment
  );
  
  WHERE rental_id IN
  (
   SELECT rental_id
   FROM rental
   WHERE inventory_id IN
   (
    SELECT inventory_id
    FROM inventory
    WHERE film_id IN
    (
     SELECT film_id
     FROM film
     WHERE title = 'Blanket Beverly'
    )
   )
  )
 );

-- 7g)
SELECT store_id, address_id
FROM store
WHERE store_id IN
(
 SELECT store_id,
 FROM customer;
 );

