# Write your MySQL query statement below

select
    c.name as customer_name,
    c.customer_id as customer_id,
    o.order_id as order_id,
    o.order_date as order_date
from
    (
        select
            *,
            rank() over(partition by customer_id order by order_date desc) as rnk
        from
            Orders
    ) as o left join Customers as c
on o.customer_id = c.customer_id
where rnk in (1,2,3)
order by
    customer_name asc,
    customer_id asc,
    order_date desc