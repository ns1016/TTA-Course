-- Using the Sakila database complete the following tasks
-- 1. Fill in the blanks (denoted by <#>) for the following query to obtain the results that follow:

use sakila;
select c.first_name, c.last_name, a.address, ct.city
from customer c inner join address a 
on c.address_id=a.address_id
inner join city ct
on a.city_id=ct.city_id where a.district='California';

-- 2. Write a query that returns the title of every film in which an actor with the first name JOHN appeared. 
select f.title, ac.first_name, ac.last_name 
from film f inner join film_actor fa 
on f.film_id=fa.film_id
inner join actor ac
on ac.actor_id=fa.actor_id where ac.first_name='JOHN';

-- 3. Construct a query that finds returns all addresses which are in the same city. 
-- You will need to join the address table to itself, and each row should include 2 different addresses.

select a.address, ad.address, a.city_id, ad.city_id 
from address a  join address ad on a.city_id=ad.city_id 
where a.address_id<>ad.address_id and a.city_id=ad.city_id;
