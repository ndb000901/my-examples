# 预期用途是从 mysql 客户端报告查询执行时间
SELECT BENCHMARK(1000000,AES_ENCRYPT('hello','goodbye'));

# 返回字符串参数的字符集，如果参数为 NULL，则返回 NULL。
select charset('abc');

select charset(convert('abc' using ascii));

select charset(user());

select charset(version());

select charset(NULL);

# 返回字符串参数的校对强制值。
select coercibility('abc' collate utf8mb4_general_ci);
select coercibility('abc');

select coercibility(1);
select coercibility(null);

# Returns the collation of the string argument.
select collation('abc');
select collation(123);
select collation(null);
select collation('abc' collate utf8mb4_general_ci);

# 返回连接id
select connection_id();

# 返回当前角色
select current_role();

# 返回当前用户
select user();
select current_user();

# 返回当前数据库
select database();

# 返回行数
select sql_calc_found_rows * from author where id > 0;
select found_rows();

# icu 版本
select icu_version();

# 返回最后插入的自增 ID
insert into author(name) values ('author-5');
select last_insert_id();

# 返回graphml
select roles_graphml();

# row_count
select row_count();

# 与database类似
select schema();

#  类似
select session_user();
select user();

# 返回版本
select version();