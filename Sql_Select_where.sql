-- all the details
select * from orders;

-- pull specfic columns
select orders.order_id,orders.order_date from orders;

-- limited data
select orders.order_id,orders.order_date from orders
limit 9;

-- pull the data in column based sorting
select orders.order_id,orders.order_date from orders
order by order_date;


select orders.order_id,orders.order_date from orders
order by order_date desc;

-- pull the distinct values
Select distinct orders.ship_mode from orders;

-- pull distinct combination
select distinct orders.ship_mode,orders.segment  from orders;

Select * from orders;


-- filter

Select * from orders
where upper(ship_mode) ='FIRST CLASS';


