# Write your MySQL query statement below

select
    u.name as name,
    sum(t.amount) as balance
from
    Transactions as t left join Users as u
on t.account = u.account
group by
    t.account
having
    balance > 10000