# Write your MySQL query statement below

select
    c.customer_id as customer_id,
    c.name as name
from
    Orders as o left join Customers as c
on o.customer_id = c.customer_id
left join Product as p
on o.product_id = p.product_id
group by c.customer_id
having
    sum(if(o.order_date like '2020-06%', o.quantity * p.price, 0)) >= 100 and
    sum(if(o.order_date like '2020-07%', o.quantity * p.price, 0)) >= 100