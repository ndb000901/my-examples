# Write your MySQL query statement below

select
    o.customer_id as customer_id,
    c.customer_name as customer_name
from
    Orders as o left join Customers as c
on c.customer_id = o.customer_id
group by c.customer_id
having
    sum(if(product_name = 'A', 1, 0)) > 0 and
    sum(if(product_name = 'B', 1, 0)) > 0 and
    sum(if(product_name = 'C', 1, 0)) = 0