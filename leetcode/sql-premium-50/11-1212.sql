# Write your MySQL query statement below
select
    t1.team_id as team_id,
    t1.team_name as team_name,
    case
        when sum(t2.goals) is null then 0
        else sum(t2.goals)
    end as num_points
from
    Teams as t1 left join
((select
    case
        when guest_goals > host_goals then 3
        when guest_goals = host_goals then 1
        else 0
    end as goals,
    guest_team as team
from
    Matches)
union all
(select
    case
        when host_goals > guest_goals then 3
        when host_goals = guest_goals then 1
        else 0
    end as goals,
    host_team as host_team
from
    Matches)) as t2
on t1.team_id = t2.team
group by t2.team
order by num_points desc