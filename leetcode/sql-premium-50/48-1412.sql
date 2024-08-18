-- # Write your MySQL query statement below
-- select
-- *
--     -- distinct student_id,
--     -- student_name
-- from
-- (select
--     exam_id,
--     student_id,
--     score,
--     (select max(score) from Exam as e1 where e1.exam_id = e.exam_id) as maxScore,
--     (select min(score) from Exam as e2 where e2.exam_id = e.exam_id) as minSocre
-- from
--     Exam as e) as t left join Student as s
-- using(student_id)
-- where
--     t.score != t.minSocre and
--     t.score != t.maxScore
select
    distinct e.student_id as student_id,
    s.student_name as student_name
from Exam as e left join Student as s
using(student_id)
where
    e.student_id not in
(select
    distinct student_id
from
    (
        select
            *,
            rank() over(partition by exam_id order by score asc) as num1,
            rank() over(partition by exam_id order by score desc) as num2
        from
            Exam
    ) as e1
where num1 = 1 or num2 = 1
)

order by
    student_id