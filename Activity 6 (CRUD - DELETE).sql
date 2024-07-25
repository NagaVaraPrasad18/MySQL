-- Activity 6 (CRUD - DELETE)

-- Delete all 4 year old cats
delete from cats where age = 4;

-- Delete cats whose age is the same as their cat_id
delete from cats where age = cat_id;

-- Delete all cats
delete from cats;