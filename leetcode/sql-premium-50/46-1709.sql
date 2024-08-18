
select
    user_id,
    max(abs(datediff(visit_date, next_date))) as biggest_window
from
(select
    user_id,
    visit_date,
    lead(visit_date, 1, '2021-1-1') over(partition by user_id order by visit_date asc) as next_date
from
    UserVisits) as u
group by
    user_id