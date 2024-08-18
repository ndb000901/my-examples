# Write your MySQL query statement below
select
    p.product_name as product_name,
    p.product_id as product_id,
    o.order_id as order_id,
    o.order_date as order_date
from
(select
    o1.order_id as order_id,
    o1.order_date as order_date,
    o1.product_id as product_id
from
    Orders as o1
where
    o1.order_date = (select max(o2.order_date) from Orders as o2 where o1.product_id = o2.product_id)) as o left join Products as p
on o.product_id = p.product_id
order by
    product_id asc,
    order_id asc