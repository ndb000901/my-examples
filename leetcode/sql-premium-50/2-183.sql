# Write your MySQL query statement below

select
    name as Customers
from
    Customers as c
where not exists(
    select 1 from Orders as o where o.customerId = c.id
)