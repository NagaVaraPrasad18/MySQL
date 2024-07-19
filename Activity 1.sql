-- Activity to create a pastries table consisting of 2 columns - name and quantity.
-- name should contain max of 50 characters
-- Inspect whether the table and columns are created
-- Delete the table

use testdb;
create table pastries
(
	name varchar(50),
    quantity int
);
show tables;
-- show columns from pastries;
desc pastries;
drop table pastries;