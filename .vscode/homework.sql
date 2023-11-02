--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';
--There are two people with the last name Wahlberg, I used the LIKE operator to find the quantity for the specified last name



--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) as numberOFpayments
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--I used the BETWEEN operator to set a range for the amount in my payment column and got 0 payments between that range.



-- 3. What film does the store have the most of? (search in inventory)
SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id)DESC;
--I used the count operator to count all of the items in the inventory_id and film_id column that are located inside the inventory table then used the group by operator to 
--seperate the films and count the films and sort them in an descending order and then when we run the code
-- it gives us an output that shows the count for each film id



-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM actor
WHERE last_name LIKE 'Williams';
--like the first question, I used the like operator to filter out any last names that are not 'WIlliams' when I ran the code i got 4 people with the name Williams



-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, SUM(amount) AS total_amount
FROM payment
GROUP BY staff_id
ORDER BY total_amount DESC;
--The employee who sold the most rentals was the employee whos id was '1', I used the select operator to sum up all the amounts of money sold by each staff member 
--and gave it a new attribute name which was 'total_amount'. then grouped the staff_id data and organized the results in descending numerical order.



-- 6. How many different district names are there?
SELECT district
FROM address
WHERE district 
-- I used the select operator to choose the district column from the address table and got 603 different districts.



-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
--I started by selecting the film_id and COUNT of the actor_id as actor_count from the film_actor TABLE
--we grouped the actors by film id and then set a DESCENDING order with a limit of 1 to only return
--the film_id with the most actors being FILM_ID 508 WITH 15 ACTORS 



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*)
FROM customer
WHERE store_id = 1
AND last_name LIKE '%es';
--Selected EVERYTHING from the customer column located in the STORE ID = 1 table  then used the AND operator to return the COUNT for the number of customers
--whose name ends is 'es', which is 13 customers



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;
-- I SELECTED THE AMOUNT COLUMN FROM THE PAYMENT TABLE AND THEN CONTINUED WITH THE WHERE CLAUSE TO FILTER CUSTOMERS THAT HAD 
--AN ID NUMBER BETWEEN 380 AND 430 AND HAD A RENTAL COUNT OVER 250



-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT (rating)
FROM film;
--There are a total of 1001 category ratings

SELECT rating, COUNT(*) AS movieTotal
FROM film
GROUP BY rating
ORDER BY movieTotal DESC;
--and the rating with the most movies is PG-13 with 224 movies. I got this by selecting all the columns
--with raitings from the film table. I grouped them by the different ratings available then ordered it by 
--DESCENDING order to return the order from movies with the most ratings to least
