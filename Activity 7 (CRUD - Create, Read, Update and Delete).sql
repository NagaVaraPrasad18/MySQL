-- Activity 7 (CRUD - Create, Read, Update and Delete)

-- Create a new Database - shirts_db
create database shirts_db;

-- Create a new table - shirts
use shirts_db;
create table shirts
(
	shirt_id int primary key auto_increment,
    article varchar(20) not null,
    color varchar(20) not null,
    shirt_size varchar(20) not null,
    last_worn int not null
);

-- Insert the given data
insert into shirts (article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);
    
-- Add a new shirt - Purple polo shirt, size M last worn 50 days ago
insert into shirts (article, color, shirt_size, last_worn)
values ('polo shirt', 'Purple', 'M', 50);

-- Select all shirts but print out only article and color
select article, color from shirts;

-- Select all medium shirts and print out everything but shirt_id
select article, color, shirt_size, last_worn from shirts
where shirt_size = 'M';

-- Update all polo shirts - Change their size to L
update shirts set shirt_size = 'L'
where article = 'polo shirt';

-- Update the shirt last worn 15 days ago - Change last_worn to 0
update shirts set last_worn = 0
where last_worn = 15;

-- Update all white shirts - Change size to 'XS' and color to 'off white'
update shirts set shirt_size = 'XS', color = 'off white'
where color = 'white';

-- Delete all old shirts - Last worn 200 days ago
delete from shirts where last_worn = 200;

-- Delete all tank tops
delete from shirts where article = 'tank top';

-- Delete all shirts
delete from shirts;

-- Drop the entire shirts table
drop table shirts;