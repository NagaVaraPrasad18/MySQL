-- Activity 2
-- Create a table - people with 3 columns - first_name, last_name, age where first_name and last_name should contain a max of 20 characters
-- Insert multiple rows with data

create table people (first_name varchar(20), last_name varchar(20), age int);

show tables;
desc people;

insert into people
values ("First1", "Last1", 1),
	   ("First2", "Last2", 2),
       ("First3", "Last3", 3);

select * from people;
