# Write your MySQL query statement below

select
    player_id,
    device_id
from
    Activity as a1
where event_date = (select min(a2.event_date) as event_date from Activity as a2 where a1.player_id = a2.player_id )

