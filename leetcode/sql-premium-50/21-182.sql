# Write your MySQL query statement below
select
    email
from
(select
    count(email) as num,
    email
from
    Person
group by
    email
having
    num > 1) as t