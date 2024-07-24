-- Activity 4

-- Select all rows of cat_id column
select cat_id from cats;

-- Select name and breeed columns of all rows
select name, breed from cats;

-- Select name and age of cats with breed = Tabby
select name, age from cats where breed = 'Tabby';

-- Select rows where cat_id is same as age
select cat_id, age from cats where cat_id = age;