# Write your MySQL query statement below

select
    p.player_id as player_id,
    p.player_name as player_name,
    (
        sum(p.player_id = c.Wimbledon) +
        sum(p.player_id = c.Fr_open) +
        sum(p.player_id = c.US_open) +
        sum(p.player_id = c.Au_open)
    ) as grand_slams_count
from
    Players as p, Championships as c
group by p.player_id
having
    grand_slams_count > 0