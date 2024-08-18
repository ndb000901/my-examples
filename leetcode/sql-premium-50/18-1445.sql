# Write your MySQL query statement below

select
    sale_date,
    sum(if(fruit = 'apples', sold_num, -sold_num)) as diff
from
    Sales
where
    sale_date
group by sale_date