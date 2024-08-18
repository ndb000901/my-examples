-- # Write your MySQL query statement below
-- select
--     name
-- from
--     (select
--         s.name as name,
--         o.amount as amount
--     from
--         SalesPerson as s left join Orders as o
--     on s.sales_id = o.sales_id and o.com_id in (select com_id from Company where name = 'RED')) as t
-- where amount is null;
select name from SalesPerson as s

where s.sales_id not in
(select
    o.sales_id as sales_id
from
    Orders as o left join Company as c on o.com_id = c.com_id
where c.name = 'RED')