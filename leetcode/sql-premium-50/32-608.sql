# Write your MySQL query statement below

select
    id,
    case
        when p_id is null then 'Root'
        when exists (select 1 from Tree as t2 where t2.p_id = t1.id) then 'Inner'
        else 'Leaf'
    end as type
from
    Tree as t1