-- Activity 8 (CRUD - Read)

-- Select all the shirts but only print out article and color
select article, color from shirts;

-- Select all Medium shirts (M) and print out everything but shirt_id
select article, color, shirt_size, last_worn from shirts where shirt_size = 'M';