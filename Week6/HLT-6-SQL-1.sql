use sakila;
-- 1. Construct a query that counts the number of rows in the payment table. 

select count(*) number_rows from payment;

-- 2. Modify your query from question 1 to count the number of payments made by each 
-- customer. Show the customer ID and the total amount paid for each customer. 

select customer_id, sum(amount) total_amount from payment group by customer_id order by total_amount desc;

-- 3. Modify your query from Exercise 2 to include only those customers having made at least five payments. 

select customer_id, sum(amount) total_amount, count(*) number_rows  from payment group by customer_id having  count(*)>=5 order by number_rows asc;

-- 4. Write a query that retrieves every row from Sales_Fact, and add a column to generate a ranking based on the tot_sales column values. 
--  The highest value should receive a ranking of 1, and the lowest a ranking of 24. 

select total_sales, rank() over (order by tot_sales desc) ranking from Sales_Fact;

--  5. Modify the query from exercise 4 to generate two sets of rankings from 1 to 12, one for 2019 data and one for 2020. 

select year_no, total_sales, rank() over (partition by year_no order by sum(tot_sales)desc) ranking from Sales_Fact group by year_no, total_sales order by 1,3 asc;

-- 6. Write a query that retrieves all 2020 data, and include a column which will contain the tot_sales value from the previous month.

select year_no, month_no, tot_sales, lag(tot_sales,1)over (order by month_no) prev_mt_tot_sales from SalesFact; 