# 字符串相关

# like
select 'a' like 'A%' collate utf8mb4_bin;

# not like
select 'a' not like 'a%';

# strcmp
select strcmp('a', 'c' collate utf8mb4_bin);

# ascii
select ascii('a'), ascii('abc');

# bin
select bin(8);

# bit_length
select bit_length('abcds'), bit_length('你好');

# char
select char(77, 78, 79);

# length 字节长度
# char_length 字符长度
# character_length 字符长度
select length('你好'), char_length('你好'), character_length('你好');

# concat
select charset(concat('abc', '123', 456));
select concat('abc', '123', 456);

# concat_ws
select concat_ws('-', 'abc', '123', 456);

# elt
select elt(2, 'a', 'b', 'c');
select elt(0, 'a', 'b', 'c');
select elt(4, 'a', 'b', 'c');

# export_set
# 5: 0101 从低位处理 a,b,a,b
select export_set(5, 'a', 'b', ',', 4);

# field 查找c 位置3
select field('c', 'a', 'b', 'c', 'd');

# find_in_set
select find_in_set('a', 'a,b,c,d');

# base64
select to_base64('abc');
select from_base64('YWJj');

# hex
SELECT X'616263', HEX('abc'), UNHEX(HEX('abc'));

# insert
select insert('abcdef', 2, 3, '123');

# instr
select instr('abcd123ef123', '123');

# lcase, lower
select lcase('Absg'), lower('Assd');

# ucase, upper
select ucase('aaaa'), upper('vvvvv');

# left, right
select left('12345', 3), right('12345', 3);

# load_file
SHOW VARIABLES LIKE 'secure_file_priv';
select load_file('/var/lib/mysql-files/hello.txt');

# locate
select locate('abc', 'abc123abc123'), locate('abc', 'abc123abc123', 5);

# lpad, rpad
select lpad('12', 4, '0'), rpad('12', 4, '0');

# trim, rtrim, ltrim
select trim('123'), rtrim(' 123 '), ltrim(' 123 ');

# make_set
# 5: 0101
select make_set(5, 'a', 'b', 'c');

# mid, substring
select mid('123456789', 2,3), substring('123456789', 2,3);

# oct
select oct(12);

# octet_length
select octet_length('你好');

# ord
select ord('你好');

# position
select position('cd' in 'abcd');

# quote
select quote('1\'234');
select '1\'234';

# repeat
select repeat('a', 3);

# replace
select replace('123456', '234', 'aaa');

# reverse
select reverse('abcd');

# soundex
select soundex('一'), soundex('医');
SELECT SOUNDEX('Smith'), SOUNDEX('Smyth');

# space
select space(6);

# sub_string
select substring_index('a.b.c.d.e', '.', 2), substring_index('a.b.c.d.e', '.', -3);

# weight_string
select weight_string('abc');









