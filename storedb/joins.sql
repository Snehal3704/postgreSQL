select * from customers cross join orders;

select * from customers c
inner join 
orders o
on c.cust_id=o.cust_id;

--inner join using group by

select c.cust_name,COUNT(o.ord_id),Sum(o.price) from customers c
inner join 
orders o
on c.cust_id=o.cust_id
GROUP BY cust_name
;

--left join

select * from customers c
left join 
orders o
on c.cust_id=o.cust_id;