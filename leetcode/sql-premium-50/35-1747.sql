# Write your MySQL query statement below

select
    distinct a.account_id as account_id
from
    LogInfo as a, LogInfo as b
where
    a.account_id = b.account_id and
    a.ip_address != b.ip_address and
    (a.login between b.login and b.logout or b.login between a.login and a.logout)