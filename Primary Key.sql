-- Primary Key

create table cats4 (
SNo int primary key,
name varchar(20) not null,
age int not null
);

insert into cats4 (SNo, name, age)
values (1, 'name1', 1),
	   (2, 'name2', 2);

desc cats4;

select * from cats4;