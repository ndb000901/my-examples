# date

# addate
select adddate('2022-01-01', interval 3 day);
select date_add('2022-01-01', interval 3 day);

select adddate('2022-01-01', interval 3 hour );
select adddate('2022-01-01', interval 3 month );
select adddate('2022-01-01', interval 3 year );
select adddate('2022-01-01', interval 3 minute );
select adddate('2022-01-01', interval 3 second );
select adddate('2022-01-01', interval 3 microsecond );

# date_sub
select date_sub('2022-01-10', interval 1 day);
select subdate('2022-01-10', interval 1 day);

# subtime
select subtime('2020-10-01 10:10:30', '00:00:10');

# addtime

# year, month, day, hour, minute, second, microsecond
set @d = '2020-08-09 10:01:11';
select year(@d);
select month(@d);
select day(@d);
select hour(@d);
select minute(@d);
select second(@d);
select microsecond(@d);

# addtime
select addtime('2020-01-01 10:10:30', '1:10:10');

#
select curdate(), current_date(), current_timestamp();
select curtime(), current_time();

# date
select date('2020-10-10 09:09:09');

# date_format
SELECT DATE_FORMAT('1999-01-01', '%X %V');

# datediff
select datediff('2020-10-10 09:09:09', '2020-10-12 10:09:09');

# dayname, monthname
select dayname('2020-10-10');
select monthname('2020-10-10');

# dayofyear,dayofmonth, dayofweek
select dayofyear('2020-10-10');
select dayofmonth('2020-10-10');
select dayofweek('2020-10-10');

# extract
select extract(year from '2020-01-10');

# from_days
select from_days(10000);

# from_unixtime
select from_unixtime(1723997548071 / 1000);

# get_format
# GET_FORMAT({DATE|TIME|DATETIME}, {'EUR'|'USA'|'JIS'|'ISO'|'INTERNAL'})
select get_format(DATE , 'ISO');

# last_day
select last_day('2020-01-10');

# makedate, maketime
select makedate(2020, 2);
select maketime(10, 11, 20);

# now, loacltime, localtimestamp
select now(), localtime(), localtimestamp();

# quarter
select quarter('2020-04-10');

# period_add, period_diff
select period_add(202008, 10);
select period_diff(202008, 202103);

# sec_to_time
select sec_to_time(100);

# str_to_date
select str_to_date('10,2022,20', '%m, %Y, %d');

# sysdate
select sysdate();

# sleep
select sleep(3);

# time
select time('20');
select time('2020-09-10 10:20:30');

# timediff
select timediff('2020-09-10 10:20:30', '2020-09-10 11:30:30');

# yearweek
select yearweek('2020-09-09');

# to_days, to_seconds
select to_days('2020-09-09');
select to_seconds('2020-09-09');

# unix_timestamp
select unix_timestamp();


# utc_date
select utc_date(), utc_date() + 0;
select utc_time(), utc_time() + 0;
select utc_timestamp(), utc_timestamp() + 0;
