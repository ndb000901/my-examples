# Write your MySQL query statement below

select
    min(t.distance) as shortest
from
(select
    abs(p1.x - p2.x) as distance
from
    Point as p1, Point as p2
where
    abs(p1.x - p2.x) != 0) as t