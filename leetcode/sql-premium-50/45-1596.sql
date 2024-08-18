select
    t2.customer_id as customer_id,
    t2.product_id as product_id,
    p.product_name as product_name
from
(select
    order_id,
    order_date,
    customer_id,
    product_id,
    cnt,
    rank() over(partition by customer_id order by cnt desc) as rnk
from
(select
    order_id,
    order_date,
    customer_id,
    product_id,
    count(product_id) as cnt
from
    Orders
group by
    customer_id, product_id) as t1) as t2 left join Products as p
using(product_id)
where
    t2.rnk = 1