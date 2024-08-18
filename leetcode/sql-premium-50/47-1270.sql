# Write your MySQL query statement below
select
    employee_id
from
    Employees
where
    employee_id in
    (
        (
            select employee_id from Employees where employee_id = 1
        )
        union all
        (
            select employee_id from Employees where manager_id in (select employee_id from Employees where manager_id = 1)
        )
        union all
        (
            select employee_id from Employees
                where manager_id in (select employee_id from Employees where manager_id in (select employee_id from Employees where manager_id = 1))
        )
    ) and employee_id != 1
