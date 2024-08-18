# Write your MySQL query statement below

select
    t1.transaction_id as transaction_id
from
    Transactions as t1
where
    t1.amount =
    (select max(t2.amount) from Transactions as t2 where date(t1.day) = date(t2.day))
order by
    transaction_id asc


select
    t.transaction_id as transaction_id
from
(select
    transaction_id,
    `day`,
    amount,
    rank() over (partition by date(`day`) order by amount desc) as rnk
from
    Transactions) as t
where
    rnk = 1
order by
    transaction_id
