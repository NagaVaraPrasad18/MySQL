-- To Display the contents of a table
create table cats(name varchar(20), age int);

insert into cats (name, age)
values ("Cat1", 1),
("Cat2", 2);

select * from cats;