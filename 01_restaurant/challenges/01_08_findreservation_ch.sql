-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.


select customerid,firstname,lastname from customers
where lastname like 'st%';


-- select * from Reservations WHERE 
-- CustomerID = (
-- select customerid from customers
-- where lastname like 'ste%')
--  and PartySize=4 and date>='2022-06-14';

select c.FirstName ,c.LastName,r.* from Reservations r 
join Customers c on r.CUSTOMERID= c.CUSTOMERID 
where lastname like 'St%'
and PartySize=4
order by r.date desc;