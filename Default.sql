-- Default

create table cats3 (name varchar(20) default 'Nothing', age int);

insert into cats3(age)
values (20);

select * from cats3;