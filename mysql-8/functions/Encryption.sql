# Encryption 函数

# md5
select md5('abc');

# sha
select sha('abc');
select sha1('adb');
select sha2('abc', 256);

# compress, uncompress zlib
select compress('abc');
select uncompress(0x03000000789C4B4C4A0600024D0127);
select uncompressed_length(0x03000000789C4B4C4A0600024D0127);

# validate_password_strength
INSTALL PLUGIN validate_password SONAME 'validate_password.so';
select validate_password_strength('fr@122877dSGGHHwdrvowi');

# random_bytes
select random_bytes(2);

# statement_digest
set @sql = 'select * from book where id = 1;';
select statement_digest(@sql);
select statement_digest_text(@sql);

# aes_encrypt, aes_decrypt
select to_base64(aes_encrypt('abcd', '1234'));
select aes_decrypt(from_base64('M1oQwFWSMh5vep4mzcqBmg=='), '1234');

