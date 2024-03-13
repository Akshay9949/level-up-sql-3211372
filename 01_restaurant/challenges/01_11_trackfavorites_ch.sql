-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select favoritedish,customerid from customers 
where firstname = 'Cleo' and lastname='Goldwater'

select dishid from dishes 
where name = 'Quinoa Salmon Salad'

update customers
set favoritedish = (select dishid from dishes 
where name = 'Quinoa Salmon Salad')
where firstname = 'Cleo' and lastname='Goldwater'

select c.firstname,c.lastname,c.favoritedish,d.name
 from customers c join dishes d
  on c.favoritedish=d.dishid