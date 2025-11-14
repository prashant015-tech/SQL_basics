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