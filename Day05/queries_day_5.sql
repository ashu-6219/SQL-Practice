--21. Find all customers whose CNUM is 1000 above the SNUM of Serres.
select * from customers where cnum > (select snum + 1000 from salespeople where sname = 'Serres');


--22. Give the salespeople’s commissions as percentages instead of decimal numbers.
select snum, sname, city, comm * 100 as comm_percent from salespeople;



--23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders which are less than $3000.00 in value.
select snum, odate, max(amt) as max_order
    from orders
    group by snum, odate
    having max(amt) >= 3000;



--24. List the largest orders for October 3, for each salesperson.
select snum, max(amt) as largest_order
    from orders
    where odate = '1996-10-03'
    group by snum, odate;



--25. Find all customers located in cities where Serres (SNUM 1002) has customers.
select * from customers where city in (select city from customers where snum = 1002);

