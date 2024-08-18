# Write your MySQL query statement below
select
    t.name as name,
    sum(distance) as travelled_distance
from
(select
    u.name as name,
    case
        when r.distance is null then 0
        else r.distance
    end as distance,
    u.id as user_id
from
    Users as u left join Rides as r
on u.id = r.user_id) as t
group by user_id
order by travelled_distance desc, name asc