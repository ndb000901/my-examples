# flow-control
# if
select if(1 = 1, 2, 3);
select if(1, 2, 3);
select if(0, 2, 3);
select if(4, 2, 3);
select if(true, 2, 3);

# nullif
select nullif(1, 2);

select nullif(1, 1);

# case

select
    case
        when 1 = 1 then 'a'
        else 'b'
    end as result;

# ifnull
select ifnull(null, 1);
select ifnull(1, 2);