--16. Find all customers with orders on October 3.
select c.cnum, cname, city, rating, odate from customers c left join orders o on  c.cnum = o.cnum where odate = '1996-10-03';



--17. Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.
select odate, sum(amt), max(amt) from orders group by odate having sum(amt) > 2000 + max(amt);




--18. Select all orders that had amounts that were greater than at least one of the orders from October 6.
select * from orders where amt > any (select amt from orders where odate = '1996-10-06');


--19. Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.
select s.snum, s.sname from salespeople s where exists (
    select 1 from customers c where c.snum = s.snum and c.rating = 300);

select * from salespeople s where exists (
    select 1 from customers c where c.snum = s.snum and c.rating = 300);



--20. Find all pairs of customers having the same rating.
select c1.cname as customer1, c2.cname as customer2, c1.rating
    from customers c1 join customers c2
    on c1.rating = c2.rating and c1.cnum < c2.cnum;

