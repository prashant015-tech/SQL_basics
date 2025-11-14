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





