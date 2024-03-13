-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
update customers 
set address = '74 Pine St.', state = 'NY', city = 'New York'
select * from customers
where 
-- firstName= 'Taylor' and lastname = 'Jenkins' and state='DC'
CustomerID=26