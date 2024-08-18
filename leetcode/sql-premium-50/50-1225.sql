select
    state as period_state,
    min(`date`) as start_date,
    max(`date`) as end_date
from
(
    select
        *,
        row_number() over (partition by state order by date asc) rk1,
        row_number() over (order by date asc) rk2
    from (
        select fail_date as date, 'failed' as state from Failed
        union all
        select success_date as date, 'succeeded' as state from Succeeded
    ) t
) r

where `date` between '2019-01-01' and '2019-12-31'
group by state, rk2 - rk1