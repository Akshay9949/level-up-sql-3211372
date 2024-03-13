-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

insert into anniversary
(customerid,partysize)
values((select customerid from customers 
where email='atapley2j@kinetecoinc.com'),3)

SELECT * from Customers where email='atapley2j@kinetecoinc.com'

SELECT * from anniversary where customerid=92;