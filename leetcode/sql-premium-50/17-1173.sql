# Write your MySQL query statement below
select
ROUND((select
    count(1)
from
    Delivery
where
    year(order_date) = year(customer_pref_delivery_date) and
    month(order_date) = month(customer_pref_delivery_date) and
    day(order_date) = day(customer_pref_delivery_date))
    /
(select
    count(1)
from
    Delivery) * 100,2) as immediate_percentage