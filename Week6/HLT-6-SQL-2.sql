-- 1. Create a view definition that can be used by the following query to generate the given results: 

use sakila;

create view film_ctgry_actor (title, category_name, first_name, last_name )
as select title, name as category_name, first_name, last_name from actor a
inner join film_actor fa on a.actor_id=fa.actor_id
inner join film_category fc on fa.film_id=Fc.film_id
inner join category c on fc.category_id=c.category_id
inner join film f on fa.film_id=F.film_id
where a.last_name='FAWCETT';

-- 2. The film rental company manager would like to have a report that includes the name of 
-- every country, along with the total payments for all customers who live in each country. 
-- Generate a view definition that queries the country table and uses a scalar subquery to 
-- calculate a value for a column named tot_payments

create view country_tot_payments( country, tot_payments) as
select country,  sum(amount) tot_payments from customer cu
inner join payment p on cu.customer_id= p.customer_id
inner join address ad on cu.address_id=ad.address_id
inner join city ct on ad.city_id=ct.city_id
inner join country co on ct.country_id=co.country_id
group by country order by 2 desc;
