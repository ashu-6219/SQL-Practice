--26. Select all customers with a rating above 200.00.
select * from customers where rating > 200;



--27. Count the number of salespeople currently listing orders in the Orders table.
select count(distinct snum) as salesperson_count from orders;


---28. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson’s rate of commission.
select c.cname, s.comm * 100 as commission
    -> from customers c
    -> join salespeople s
    -> on c.snum = s.snum
    -> where s.comm > 0.12;



--29. Find salespeople who have multiple customers.
select s.snum, s.sname, count(c.cnum) as cust_count
    -> from salespeople s
    -> join customers c
    -> on s.snum = c.snum
    -> group by s.snum, s.sname
    -> having count(c.cnum) > 1;

-SELECT SNUM, COUNT(*) AS customer_count
    -> FROM Customers
    -> GROUP BY SNUM
    -> HAVING COUNT(*) > 1;




--30. Find salespeople with customers located in their city.
