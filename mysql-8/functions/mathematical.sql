# 数学相关函数

# 返回数字的绝对值
select abs(-10);

# acox(x)
select acos(1);

# asin(x)
select asin(0.2);

# atan(x)
select atan(2);

# atan(x,y)  atan2(x,y)
select atan(2,3), atan2(2,3);

# ceil ceiling
select ceil(-2.1), ceiling(-2.1);

# conv 转换进制，把10 从2进制转为10进制
select conv(10, 2, 10);

# cos(x)
select cos(1);

# cot(x)
select cot(1);

# CRC32
select crc32('hello');

# degrees(x) 弧度转角度
select degrees(PI());

# exp(x)
select exp(1);

# floor(x) 取不大于x的整数
select floor(-1.8);

# format(x, d) 格式化数字
select format(1.5, 2);

# hex()
select hex(13);

# ln(x)
select ln(10);

# log()
select log(10), log(2,4), ln(10);

# log2
select log2(8);

# log10
select log10(1000);

# mod
select mod(10, 4);

# pi
select PI();

# pow
select pow(2, 4);

# radians(x) 角度转弧度
select radians(180);

# rand
select rand();

# sign
select sign(0), sign(-1), sign(1);

# sin
select sin(1);

# tan
select tan(1);

# sqrt(x)
select sqrt(9);

# truncate
select truncate(1.12345, 3), truncate(1234.56789, -2);
