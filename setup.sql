--1. Create Salespeople
CREATE TABLE Salespeople (
    SNUM INT PRIMARY KEY,
    SNAME VARCHAR(50),
    CITY VARCHAR(50),
    COMM DECIMAL(4,2)
);

--2. Insert values in Salespeople
INSERT INTO Salespeople (SNUM, SNAME, CITY, COMM)
VALUES
(1001, 'Peel', 'London', 0.12),
(1002, 'Serres', 'San Jose', 0.13),
(1004, 'Motika', 'London', 0.11),
(1007, 'Rifkin', 'Barcelona', 0.15),
(1003, 'AxelRod', 'New York', 0.10),
(1005, 'Fran', 'London', 0.26);


--3. Create Customers
CREATE TABLE Customers (
    CNUM INT PRIMARY KEY,
    CNAME VARCHAR(50),
    CITY VARCHAR(50),
    RATING INT,
    SNUM INT,
    FOREIGN KEY (SNUM) REFERENCES Salespeople(SNUM)
);

--4. Insert values in Customers
INSERT INTO Customers (CNUM, CNAME, CITY, RATING, SNUM)
VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);


--5. Create Orders
CREATE TABLE Orders (
    ONUM INT PRIMARY KEY,
    AMT DECIMAL(10,2),
    ODATE DATE,
    CNUM INT,
    SNUM INT,
    FOREIGN KEY (CNUM) REFERENCES Customers(CNUM),
    FOREIGN KEY (SNUM) REFERENCES Salespeople(SNUM)
);


--6. Insert values in Orders
INSERT INTO Orders (ONUM, AMT, ODATE, CNUM, SNUM)
VALUES
(3001, 18.69, '1996-10-03', 2008, 1007),
(3003, 767.19, '1996-10-03', 2001, 1001),
(3002, 1900.10, '1996-10-03', 2007, 1004),
(3005, 5160.45, '1996-10-03', 2003, 1002),
(3006, 1098.16, '1996-10-03', 2008, 1007),
(3009, 1713.23, '1996-10-04', 2002, 1003),
(3007, 75.75, '1996-10-04', 2002, 1003),
(3008, 4723.00, '1996-10-05', 2006, 1001),
(3010, 1309.95, '1996-10-06', 2004, 1002),
(3011, 9891.88, '1996-10-06', 2006, 1001);
