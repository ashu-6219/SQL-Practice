--11. Match salespeople to customers according to what city they lived in.
select s.sname, c.cname, c.city from salespeople s join customers c on s.city = c.city;


--12. Find the largest order taken by each salesperson.
select s.snum, s.sname, max(o.amt) from salespeople s left join orders o on s.snum = o.snum group by s.snum, s.sname;



--13. Find customers in San Jose who have a rating above 200.
select * from customers where city = 'San Jose' and rating > 200;



--14. List the names and commissions of all salespeople in London.
select snum, sname, comm from salespeople where city ='London';



--15. List all the orders of salesperson Motika from the Orders table.
select s.snum, s.sname, o.onum, o.amt, o.odate from orders o left join salespeople s on o.snum = s.snum where s.sname = 'Motika';


