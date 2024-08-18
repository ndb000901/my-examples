# Write your MySQL query statement below
select
    b.name as country
from
(select caller_id, duration from Calls
union
select callee_id as caller_id, duration from Calls) as a
left join
(
    select
        p.id as id,
        c.name as name,
        c.country_code
    from
        Person as p left join Country as c
    on left(p.phone_number, 3) = c.country_code
) as b
on a.caller_id = b.id
group by b.country_code
having
avg(a.duration) >
(select avg(duration) from Calls)
