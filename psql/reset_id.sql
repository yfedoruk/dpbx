/* http://digitaldreamer.net/blog/2013/6/11/reset-auto-increment-counter-postgres/
reset auto increment counter in postgres Jun
postgres uses something called a sequence to keep track of the auto increment counts. To list the sequences us:
*/

\ds

/* The sequence name is in the format of ${table}_{variable}_seq 
You can reset the counter using the function */

setval('product_id_seq', 1453);

-- or

select setval('product_id_seq', (SELECT MAX(id) FROM product));

-- If you do not know the name you can use the pg_get_serial_sequence function on the table 

select pg_get_serial_sequence('product', 'id');

-- You can also manually update the sequence with the command:

ALTER SEQUENCE product_id_seq RESTART WITH 1453;