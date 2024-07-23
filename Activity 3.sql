-- Activity 3
-- Define an Employees Table with the following fields
-- id - number (auto increment), primary key
-- last_name - text, mandatory
-- first_name - text, mandatory
-- middle_name - text, not mandatory
-- age - number, mandatory
-- current_status - text, mandatory, default - 'employed'

create table Employees
(
	id int primary key auto_increment,
    last_name varchar(20) not null,
    first_name varchar(20) not null,
    middle_name varchar(20),
    age int not null,
    current_status varchar(20) not null default 'employed'
);

insert into Employees(last_name, first_name, age)
values ('Last', 'First', 1);

desc Employees;

select * from Employees;