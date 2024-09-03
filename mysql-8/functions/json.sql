# json

# json_object
select json_object('k1', 'v1', 'k2', 'v2');

# json_array
select json_array('1', '2', '3');

# json_extract
select json_extract('{"k1": "v1", "k2": "v2"}', '$.k2');

# josn_unquote
select json_unquote(json_extract('{"k1": "v1", "k2": "v2"}', '$.k2'));

# josn_set
select json_set('{"k1": "v1", "k2": "v2"}', '$.k2', 'v22');

# json_insert
select json_insert('{"k1": "v1", "k2": "v2"}', '$.k3', 'v33');
select json_insert('{"k1": "v1", "k2": "v2"}', '$.k2', 'v33');

# josn_replace
select json_replace('{"k1": "v1", "k2": "v2"}', '$.k3', 'v33');
select json_replace('{"k1": "v1", "k2": "v2"}', '$.k2', 'v33');

# json_remove
select json_remove('{"k1": "v1", "k2": "v2"}', '$.k3');
select json_remove('{"k1": "v1", "k2": "v2"}', '$.k2');

# json_contains
select json_contains_path('{"k1": "v1", "k2": "v2"}', 'one', '$.k1', '$.k3');
select json_contains_path('{"k1": "v1", "k2": "v2"}', 'all', '$.k1', '$.k3');
select json_contains('{"k1": "v1", "k2": "v2"}', '"v3"', '$.k2');
SELECT JSON_CONTAINS('{"name": "Alice", "age": 25}', '25', '$.age');

# josn_keys
select json_keys('{"k1": "v1", "k2": "v2"}');
select json_keys('{"k1": "v1", "k2": "v2", "k3": {"k4": "v4"}}');

# josn_length
select json_length('{"k1": "v1", "k2": "v2"}');

# josn_merge
select json_merge_patch('{"k1": "v1", "k2": "v2"}', '{"k1": "v3", "k2": "v4"}');
select json_merge('{"k1": "v1", "k2": "v2"}', '{"k1": "v3", "k2": "v4"}');

# -> ->>
select data->'$.k2' from json_demo where id = 1;
select data->>'$.k2' from json_demo where id = 1;

# json_overlaps
select json_overlaps(json_array(1,2,3,4), json_array(1));
select json_overlaps(json_array(1,2,3,4), json_array(0));

# json_search
select json_search('{"k1": "v1", "k2": "v2"}', 'one', 'v1');

# json_value
select json_value('{"k1": "v1", "k2": "2"}', '$.k1');
select json_value('{"k1": "v1", "k2": "2"}', '$.k2' returning float );

# member of
select 1 member of (json_array(1,2,3));
select 4 member of (json_array(1,2,3));

# json_array_append
select json_array_append(json_array(1,2,3), '$[2]', 4);

# josn_type
select json_type('1');
select json_type('"111"');

# josn_vaild
select json_valid('111'), json_valid('[]');

# json_pretty
select json_pretty(data) from json_demo;

# json_storage_free
select json_storage_free(data) from json_demo;

# json_storage_size
select json_storage_size(data) from json_demo;

