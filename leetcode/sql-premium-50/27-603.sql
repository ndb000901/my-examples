# Write your MySQL query statement below

select
    distinct c1.seat_id as seat_id
from
    Cinema as c1, Cinema as c2
where
    c1.free = 1 and c2.free = 1 and abs(c1.seat_id - c2.seat_id) = 1
order by
    c1.seat_id asc