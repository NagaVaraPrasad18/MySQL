-- CRUD (UPDATE)
-- Here Safe Update Mode is disabled (SET SQL_SAFE_UPDATES = 0;)
-- To enable it - (SET SQL_SAFE_UPDATES = 1;)

update cats2 set age = 99
where age = 2;

select * from cats2;