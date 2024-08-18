# Write your MySQL query statement below

select
    player_id,
    event_date,
    (select
        sum(games_played)
    from
        Activity as a1
    where
        a1.player_id = a2.player_id and a1.event_date <= a2.event_date ) as games_played_so_far
from
    Activity as a2