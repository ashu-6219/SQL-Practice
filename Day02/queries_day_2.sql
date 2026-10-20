--6. Find which salespeople currently have orders in the Orders table.
select s.snum, s.sname 
from salespeople s 
join orders o 
on s.snum = o.snum;


--7. List names of all customers matched with the salespeople serving them.
select c.cname, s.snum, s.sname 
from customers c 
left join salespeople s 
on c.snum = s.snum;


--8. Find the names and numbers of all salespeople who had more than one customer.
select s.snum, s.sname 
from salespeople s 
join customers c 
on s.snum = c.snum 
group by s.snum, s.sname 
having count(s.snum) > 1;    


--9. Count the orders of each of the salespeople and output the results in descending order.
select o.snum, s.sname, count(*) as order_count 
from orders o 
left join salespeople s 
on o.snum = s.snum 
group by snum 
order by order_count desc;


--10. List the Customer table if and only if one or more of the customers in the Customer table are located in San Jose.
select * from customers where exists 
(select * from customers where city = 'San Jose');

