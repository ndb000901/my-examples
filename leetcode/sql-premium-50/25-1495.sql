# Write your MySQL query statement below

select
    c.title as title
from
    Content as c left join TVProgram as t
on c.content_id = t.content_id
where
    c.Kids_content = 'Y' and t.program_date like '2020-06%'