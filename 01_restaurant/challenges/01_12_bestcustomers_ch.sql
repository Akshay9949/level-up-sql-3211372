-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.customerid,c.firstname,c.lastname,
c.email,count(o.orderid) as total_orders
from customers c join orders o 
on c.customerid=o.customerid 
group by o.customerid 
order by total_orders desc;