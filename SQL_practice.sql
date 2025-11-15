-- sort the data

Select * from orders
order by order_date desc;

-- Limit

select * from orders
limit 5;

-- distinct
-- to get the distinct values
select distinct ship_mode from orders
order by ship_mode desc ;

-- it will give  the unique combination


-- filter
select * from orders
where UPPER(ship_mode) ='SECOND CLASS';

Select * from orders
where order_date ='2020-12-08';

Select * from orders
where order_date ='2020-12-08';

select * from orders
where quantity =7;

select * from orders
where quantity >=7;


select distinct quantity from orders
where quantity >=7;

select orders.order_date ,orders.quantity from orders
where quantity>6
order by quantity
limit 5;


select * from orders
where order_date <'2020-12-08';

select * from orders
where order_date between '2020-12-08' and '2020-12-10'
order by order_date desc;


-- filters with in

select * from orders
where quantity in (2,4,7)
order by quantity desc;

select distinct ship_mode from orders
where ship_mode not in ('first Class','Same Day');

-- and or condtions

select * from orders
where quantity >5 and order_date    < '2020-11-08';


select * from orders
where quantity >5 or order_date    < '2020-11-08';

-- add extra columns during select

select *,(profit/sales) as ratio  from orders
where quantity >5 or order_date    < '2020-11-08';

-- pattern matching like opertor

select orders.order_id,orders.order_date,customer_name from orders
where customer_name like 'Chris%';


select distinct customer_name from orders
where upper(customer_name)like 'C%';




select distinct customer_name from orders
where upper(customer_name) like '%C';

select distinct customer_name from orders
where upper(customer_name) like '%C%';


select distinct customer_name from orders
where upper(customer_name) like 'A%A';


-- to make sure sum charters in front

select distinct customer_name from orders
where upper(customer_name) like '_A%';


select distinct customer_name from orders
where upper(customer_name) like '__A%';

select distinct customer_name from orders
where (customer_name) like 'C[al]%' ;

-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth characte

select * from orders
where (customer_name) like '_a_d%' ;

-- - write a sql to get all the orders placed in the month of dec 2020 (352 rows)

select * from orders
where (order_date)  between '2020-12-01' and '2020-12-31' ;

-- 3- write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)
select * from orders
where  ship_mode not in ('Standard Class','First Class') and order_date > '2020-11-30' ;

-- 4- write a query to get all the orders where customer name neither start with "A" and nor ends with "n" (9815 rows)

select * from orders where customer_name not like 'A%n';


-- 5- write a query to get all the orders where profit is negative (1871 rows)
select * from orders
where profit < 0;


-- 6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)

select * from orders
where profit = 0 or quantity < 3;

select * from orders where profit=0 or quantity<3;

-- 7- your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers (815 rows)

select * from orders where region='South' and discount>0;

-- 8- write a query to find top 5 orders with highest sales in furniture category
select distinct  category from orders;


select * from orders
where category in ('Furniture')
order by sales desc
limit 5;

-- 9- write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only (1021 rows)

select * from orders
where category in ('Furniture','Technology' ) and order_date between  '2020-01-01' and '2020-12-31';


-- 10-write a query to find all the orders where order date is in year 2020 but ship date is in 2021 (33 rows)
select * from orders
where (order_date between  '2020-01-01' and '2020-12-31') and (ship_date between  '2021-01-01' and '2021-12-31')

