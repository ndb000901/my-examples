# Write your MySQL query statement below
select
    d.name as Department,
    e.name as Employee,
    e.salary as salary
from
(select
    e1.id as id,
    e1.name as name,
    e1.salary as salary,
    e1.departmentId as departmentId
from
    Employee as e1
where
    salary = (select max(salary) from Employee as e2 where e2.departmentId = e1.departmentId)) as e left join Department as d
on e.departmentId = d.id

