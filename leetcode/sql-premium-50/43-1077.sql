# Write your MySQL query statement below

select
    project_id,
    employee_id
from
(select
    p.project_id as project_id,
    p.employee_id as employee_id,
    rank() over (partition by p.project_id order by e.experience_years desc) as rnk
from
    Project as p left join Employee as e
using(employee_id)) as t
where
    rnk = 1