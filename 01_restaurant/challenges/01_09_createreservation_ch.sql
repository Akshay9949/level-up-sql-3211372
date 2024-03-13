-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select * from customers where Email='smac@kinetecoinc.com';

insert into customers
(FirstName,LastName,Email)
 values('Sam','McAdams','smac@kinetecoinc.com');

 Insert into Reservations(customerid,partysize,date)
values(
(select customerid from customers where Email='smac@kinetecoinc.com'), 5,'2022-08-12 18:00:00'
)

select c.FirstName ,c.LastName,r.* from Reservations r 
join Customers c on r.CUSTOMERID= c.CUSTOMERID 
where Email='smac@kinetecoinc.com';