# Write your MySQL query statement below

select
    employee_id,
    (select count(e1.employee_id) from Employee as e1 where e1.team_id = e2.team_id)
    team_size
from
    Employee as e2