-- WHERE

-- To retrieve all the columns if age = 4
select * from cats where age = 4;

-- To retrieve name column if age = 4
select name from cats where age = 4;

-- To retrieve multiple columns- name and breed if breed = 'maine coon'
select name, breed from cats where breed = 'maine coon';