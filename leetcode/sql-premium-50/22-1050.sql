# Write your MySQL query statement below
select
    actor_id,
    director_id
from
(select
    count(1) as num,
    actor_id,
    director_id
from
    ActorDirector
group by
    actor_id, director_id
having num >= 3) as t
