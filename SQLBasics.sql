Select * from actor;
Select first_name, actor_id  from actor;

select * from information_schema.columns
where table_name ='actor';


--want to send promotional emails to customer
select first_name,last_name,email from customer;


--How to Select Unique Records from a Table?
select distinct actor.first_name from actor;

-- Count

Select distinct count(first_name) from  actor;
Select count(first_name),count(actor_id) from actor;
Select distinct ((first_name,actor_id)) from actor;
SELECT distinct(count (amount)) from payment;


-- Where

Select * from payment
where customer_id =341;

select sum(amount) from payment
where customer_id =341  and staff_id =1;

select * from customer
where store_id =1 and activebool =true;

select * from film
where rental_rate > 2 and rental_duration = 6;

select * from film
where rental_rate > 2 and rental_duration = 6 and length > 60;


select * from film
where rental_rate > 2 and rental_duration = 6 and length > 60 and rating ='G';

Select count(*) from film
where rating != 'R';


-- MAX and min

SELECT MIN(address_id)
FROM customer;

SELECT MAX(address_id)
FROM customer;

-- Order by

Select  amount from payment
order by amount ;



Select  amount from payment
order by amount desc ;


-- Limit
Select * from payment
limit 5;


Select customer_id, amount from payment
where customer_id = 184 or customer_id = 51 or customer_id =341
order by amount desc
limit 5


Select customer_id,amount from payment;

-- Between
Select customer_id,amount from payment
where customer_id between 300 and 500;

select * from payment
where payment_date between '2007-02-1' and '2007-02-15'

-- Not Between

Select * from payment
where payment_date NOT BETWEEN '2007-02-1' and '2007-02-15';

-- In
Select * from payment
where amount in (0.99,2.99,7.99);

-- NOT In

Select * from payment
where amount NOT in (0.99,2.99,7.99);


-- Like
select * from customer
where first_name Like 'A%'

Select * from customer
where first_name like 'A%' and last_name    not LIKE 'H%';


select * from customer
where first_name ILike 'a%' and last_name Not ILike '%h';

Select * from customer
where first_name like 'P%';

Select * from customer
where first_name like '_her%';

Select * from customer
where first_name Not like '_her%';





