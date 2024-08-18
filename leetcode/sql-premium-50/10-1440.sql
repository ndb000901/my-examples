# Write your MySQL query statement below

select
    e.left_operand as left_operand,
    e.operator as operator,
    e.right_operand as right_operand,
    case
        when e.operator = '=' then
            case
                when a1.value = a2.value then 'true'
                else 'false'
            end
        when e.operator = '>' then
            case
                when a1.value > a2.value then 'true'
                else 'false'
            end
        when e.operator = '<' then
            case
                when a1.value < a2.value then 'true'
                else 'false'
            end
    end as value
    -- a1.value as left_value,

    -- a2.value as right_value
from Expressions as e, Variables as a1, Variables as a2
where e.left_operand = a1.name and e.right_operand = a2.name