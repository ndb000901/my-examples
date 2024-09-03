
# any_value
select any_value(id), max(name) from author group by name;

# bin_to_uuid

select bin_to_uuid(binary('1234567890abcdef'));

# default
select default(id) from book;

# grouping
select
    sum(id) as id,
    name,
    grouping(name) as g_name
from
    author
group by
    name
with rollup;

# 0000 0001, 0000 0010 ,0000 0011 ,0000 0100

# inet_aton
select conv(inet_aton('1.2.3.4'), 10, 2);

# inet_ntoa
select inet_ntoa(1234);

# inet6_aton, inet6_ntoa
select inet6_aton('fdfe::5a55:caff:fefa:9089');
select inet6_ntoa(unhex('fdfe0000000000005a55cafffefa9089'));

# is_ipv4
select is_ipv4('1.1.1.1');
select is_ipv6('fdfe::5a55:caff:fefa:9089');
select is_ipv4_compat(inet6_aton('::10.0.5.9'));
select is_ipv4_mapped(inet6_aton('::ffff:1.1.1.1'));

select uuid();
select uuid_short();
select is_uuid('1ee74941-5f04-11ef-8ce6-0242ac120004');

select name_const('name', 110);

select rand();

SELECT (.1 + .2) = .3;

select * from book;

describe book;



