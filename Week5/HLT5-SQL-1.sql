use sakila;
-- Which of the payment IDs would be returned by the following filter conditions? 
-- customer_id <> 5 AND (amount > 8 OR date(payment_date) = '2005-08-23’) 

Select payment_id from payment 
where customer_id <> 5 and (amount > 8 or date(payment_date) = '2005-08-23');

-- Which of the payment IDs would be returned by the following filter conditions? 
-- customer_id = 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19’)

Select payment_id from payment 
where customer_id = 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19');

-- Construct a query that retrieves all rows from the Payment table where the amount is either 1.98, 7.98, or 9.98. 

select * from payment where amount in ( 1.98, 7.98, 9.98);

-- Construct a query that finds all customers whose last name contains an A in the second position and a W anywhere after the A.

select last_name, first_name from customer where last_name like '_A%W';

select last_name, first_name from customer where first_name like 'B%A';