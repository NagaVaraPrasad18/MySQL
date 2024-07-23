-- Auto_Increment

create table cats5 (
	ID int primary key auto_increment,
    name varchar(20) not null,
    age int not null
);

insert into cats5 (name, age)
values ('name1', 1),
	   ('name2', 2);
       
select * from cats5;