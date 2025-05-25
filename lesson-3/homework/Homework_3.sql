--create database [homework_3]

--use [homework_3]	


--Easy-Level Tasks (10)

--Define and explain the purpose of BULK INSERT in SQL Server.

BULK INSERT is used to quickly load huge amounts of data from a data file into a SQL Server table. such as from CSV to text file


--List four file formats that can be imported into SQL Server.

CSV (Comma-Separated Values)
 TXT (Plain Text Files)
 Excel Files (.XLS / .XLSX)
 XML (eXtensible Markup Language)

 --Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

 create table products(ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))

 select * from products


 --Insert three records into the Products table using INSERT INTO.

 insert into products values(5, 'smartphone', 500, 2 )
 insert into products values(6, 'playstation', 900, 6)
 insert into products values(8, 'mouse', 150, 8)

 --Explain the difference between NULL and NOT NULL.

 NULL:
Represents missing, unknown, or undefined data.

NOT NULL:
A constraint that prevents a column from having NULL values.

drop table products


--Add a UNIQUE constraint to the ProductName column in the Products table.

 
 create table products(ProductID INT PRIMARY KEY, ProductName VARCHAR(50) unique, Price DECIMAL(10,2)
 , categoryid int constraint fk_categoty foreign key (categoryid) references categories(categoryID))

 select * from products

 insert into products values(5, 'smartphone', 500)
 insert into products values(6, 'playstation', 900)
 insert into products values(8, 'mouse', 150)


 --Write a comment in a SQL query explaining its purpose./////////////////////////////





 --Add CategoryID column to the Products table.

 alter table products add categoryID int

 drop table products



 --Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.


 create table categories(categoryID int PRIMARY KEY, Categoryname int unique)

 select * from categories

 --Explain the purpose of the IDENTITY column in SQL Server.

 the IDENTITY column is used to automatically generate unique numeric values for a column,
 as well that one is automatically increments each time a new row is inserted.
 It doesnot reqiure to in insert row numbers manually



 --Medium-Level Tasks (10)

 --Use BULK INSERT to import data from a text file into the Products table.//////////////////////////////////////

 drop table categories
 

 bulk insert products
 from 'C:\Users\hp\Desktop\Green card 2025\productstable.txt'
 with(
	firstrow = 2 ,
	fieldterminator = ',',
	rowterminator = '\n')

 --Create a FOREIGN KEY in the Products table that references the Categories table.

 create table categories(categoryID int PRIMARY KEY, Categoryname int)

 select * from products
 select * from categories

 insert into products values(5, 'smartphone', 500)
 insert into products values(6, 'playstation', 900)
 insert into products values(8, 'mouse', 150)

 insert into categories values(5, 'smartphone')
 insert into categories values(6, 'playstation')
 insert into categories values(8, 'mouse')


 --Explain the differences between PRIMARY KEY and UNIQUE KEY.

 A PRIMARY KEY uniquely identifies each record in a table and 
cannot contain NULL values. A UNIQUE KEY, on the other hand, 
enforces uniqueness within a column or set of columns, but
 can optionally allow one NULL value.
 A table can have only one primary key, but multiple unique keys.

 --Add a CHECK constraint to the Products table ensuring Price > 0.

create table products(ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2), check (price > 0))


 select * from products

 --Modify the Products table to add a column Stock (INT, NOT NULL).

 alter table products add stock int not null

 --Use the ISNULL function to replace NULL values in Price column with a 0. ////////////////////////////////////

 select ISNULL(null, price) from products

 --Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

 A FOREIGN KEY is a constraint used in SQL Server to link two tables together.
 It ensures that the value in a column (or combination of columns) in one table matches values in
 the primary key column of another table, maintaining referential integrity.Its purpose is consists of followings: 
 Ensures consistency between related tables,Stops insertion of rows with non-matching keys,
 Automatically delete or update certain table rows using ON DELETE or ON UPDATE.


 --Hard-Level Tasks (10)


 --Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

 create table customers(customerid int, name varchar(50), phone int, age int check(Age >= 18)) 

 select * from customers

 insert into customers values(2, 'linda', 1254879, 18)
 insert into customers values(5, 'alex', 5897456, 19)
 insert into customers values(9, 'oscar', 3256847, 17)
 insert into customers values(7, 'mike', 25987654, 16)
 insert into customers values(12, 'tim', 78965412, 22)

--Create a table with an IDENTITY column starting at 100 and incrementing by 10.

create table drivers(id int identity(100, 10), name varchar(50), age int)

select * from drivers

insert into drivers values('mike', 18)
insert into drivers values('oscar', 18)
insert into drivers values('tom', 18)


--Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

create table orderdetails(orderid int, ordername varchar(50), orderquantity int, primary key orderid, orderquantity)

select * from orderdetails


--Explain the use of COALESCE and ISNULL functions for handling NULL values.

Both COALESCE and ISNULL are used in SQL to handle NULL values, but they have different behaviors and flexibility.
ISNULL is used to change certain quantity from one to another inside of the table.
COALESCE is used in sql returns the first non-null value from a list of expressions.



--Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

create table employees(empID int primary key, email varchar(50) unique)


select * from employees

--Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options. 

create table singers(ID int primary key, name varchar(50), songquantity int, age int, foreign key(ID) references singers(ID)
ON DELETE CASCADE
ON UPDATE CASCADE)

select * from singers

select * from singers


