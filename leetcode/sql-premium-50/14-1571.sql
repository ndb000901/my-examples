# Write your MySQL query statement below
select
    w.name as warehouse_name,
    sum(w.units * p.Width * p.Length * p.Height) as volume
from
    Products as p left join Warehouse as w
on p.product_id = w.product_id
group by w.name