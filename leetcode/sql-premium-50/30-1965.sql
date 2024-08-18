# Write your MySQL query statement below

(select
    e.employee_id as employee_id
from
    Employees as e left join Salaries as s
using(employee_id)
where
    s.salary is null)
union
(select
    s.employee_id as employee_id
from
    Employees as e right join Salaries as s
using(employee_id)
where
    e.name is null)
order by
    employee_id asc


select
    t.employee_id as employee_id
from
    (
        select employee_id from Employees union all
        select employee_id from Salaries
    ) as t
group by
    t.employee_id
having
    count(t.employee_id) = 1
order by
    employee_id asc