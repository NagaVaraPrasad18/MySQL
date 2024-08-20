-- Activity 9 (CRUD - Update)

-- Update all polo shirts and change their size to 'L'
update shirts set shirt_size = 'L' where article = 'polo shirt';
select * from shirts;

-- Update the shirt last worn 15 days ago and Change last_worn to 0
update shirts set last_worn = 0 where last_worn = 15;

-- Update all white shirts and change size to 'XS' and color to 'off white'
update shirts set shirt_size = 'XS', color = 'off white' where color = 'white'