# Write your MySQL query statement below
select
    t.customer_number as customer_number
from
    (select
        count(1) as num,
        customer_number
    from
        Orders
    group by customer_number) as t
order by t.customer_number desc
limit 1