-- Activity 5 (CRUD - UPDATE) - Safe Update Mode Disabled

-- Update Jackson's name to Jack
update cats set name = 'Jack'
where name = 'Jackson';

-- Update Ringo's breed to British Shorthair
update cats set breed = 'British Shorthair'
where name = 'Ringo';

-- Update Maine Coon's breed cats with age 12
update cats set age = 12
where breed = 'maine coon';

select * from cats;