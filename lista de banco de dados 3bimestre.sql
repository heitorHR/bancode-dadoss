/* exercisio 1-)*/ 
select 
o.order_id,
o.order_date,
concat(c.firts_name, '',
c.last_name) AS customers_name
from 
Orders o
join
customers c on o.customers_id +
c.customers_id;
/*-----------------------------------------*/

/* exercisio 2-)*/

select
p.produto_nome,
oi.quantidade
from
order_items 
join
orders o on oi.order_id = o.order_id
join produtos p on oi.order_id = o.order_id
products p on oi.products_id =
p.products_id
where 
o.customers_id = 1;


/*------------------------------------*/
 /* exersicio 3-)*/
 
 select
 concat(c.firts_name, '',
 c.last_name) as costumers_name,
 sum(p.price * oi.quantity) as 
 total_spent
 from customers c 
 join 
 order_items oi on o.order_id = oi.order_id
 join
 products p on oi.product_id =
 p.product_id
 group by 
 c.customer_id , customers_name;
 
 /*------------------------------------------*/ 
 
 /* exersicio 4-) */
 
 select
 concat(c.firts_name, '', 
 c.last_name) as customers_name 
 from
 customers c 
 left join 
 orders o on c.customer_id = 
 o.customer_id
 where
 o.order_id is null;
 
 /* exersicio 5-) */
 
 select 
 p.product_name,
 sum(oi.quantity) as total_solid
 from
 order_items oi
 join 
 products p on oi.product_id =  
 p.product_id = p.product_id
 
 group by
 p.product_name
 order by
 total_sold desc