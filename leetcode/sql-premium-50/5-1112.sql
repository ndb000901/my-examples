# Write your MySQL query statement below
select
    a.student_id as student_id,
    a.course_id as course_id,
    a.grade as grade
from
    (select
        student_id,
        course_id,
        grade,
        rank() over(partition by student_id order by grade desc, course_id asc ) as ranking
    from
        Enrollments) as a
where a.ranking = 1
order by a.student_id;
