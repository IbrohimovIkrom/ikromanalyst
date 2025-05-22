--Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).

create database [employees]

use [employees]

select * from employees


create table employees(empid int, name varchar(50), salary decimal(10,2))
alter table employees add department varchar(50)

select * from employees

insert into employees values(25, 'danny', 500)
insert into employees values(25, 'ace', 400), (32,'oscar', 300)
insert into employees select 18, 'mike', 350
union all 
select 15, 'oliver', 600

select * from employees

update employees
set salary = 7000
where empid = 1


--Delete a record from the Employees table where EmpID = 2.

delete from employees where empid = 2

--Give a brief definition for difference between DELETE, TRUNCATE, and DROP.

delete is used to remoce certain raw at all
truncate is used to delete informations inside of the object
drop is used delete table structure and informations

--Modify the Name column in the Employees table to VARCHAR(100).

alter table employees alter column name varchar (100)


--Add a new column Department (VARCHAR(50)) to the Employees table.

alter table employees add department varchar(50)

--Change the data type of the Salary column to FLOAT

update employees values'float' int, where 'salary'

 


--Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).

create table departments(departmentid int, departmentname varchar(50), management varchar(50), salary int)

select * from Departments






--Remove all records from the Employees table without deleting its structure.

truncate table employees 

--Intermediate-Level Tasks (6)


--Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).

select * from Departments

insert into Departments select 5, 'hr', ' ', 3000 
insert into Departments select 12, 'security', ' ', 6000
insert into Departments select 17, 'accounting', ' ', 5800
insert into Departments select 15, 'safety', ' ', 4000
insert into Departments select 19, 'manegement', ' ',3900
insert into Departments select 5, 'hr',' ', 5001 



select * from Departments

alter table departments add  management varchar(50), salary int 


--Update the Department of all employees where Salary > 5000 to 'Management'.

update Departmentname 
set management 
where salary > 5000





truncate table employees

alter table employees drop column department


--Rename the Employees table to StaffMembers using SQL commands.

update table emplyoees

--ALTER TABLE Employees2024 RENAME TO Employees;

alter table employees to StaffMembers /////////////////////////////


--Write a query to completely remove the Departments table from the database.

drop table departments


--Advanced-Level Tasks (9)

--Create a table named Products with at least 5 columns,
--including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

create table Products(ProductID int, productname varchar(50), category varchar(50), price decimal, check (price > 0))

alter table products add quality varchar(50)

select * from Products

--Add a CHECK constraint to ensure Price is always greater than 0.

ALTER TABLE Products
--ADD CONSTRAINT chk_price_positive CHECK (Price > 0);

drop table products 

insert into products values (5, 'laptop', 'i5', 0 )

--Modify the table to add a StockQuantity column with a DEFAULT value of 50.

create table Products(ProductID int, productname varchar(50) identity(1000, 5), category varchar(50), price decimal)

select * from products

alter table products add StockQuantity int

insert into products values (5, 'water', 'liquid', 500, '50')
insert into products values (8, 'paper', 'paper', 350, '50')
insert into products values (9, 'bread', 'bachery', 800, '50')
insert into products values (6, 'book', 'paper', 1000, '50')
insert into products values (8, 'laptop', 'electronics', 1500, '50')

--Rename Category to ProductCategory

alter table products rename column Category to ProductCategory

sp_rename 'products.old_name',  'new_name'; 



--Insert 5 records into the Products table using standard INSERT INTO queries.

insert into products values (5, 'water', 'liquid', 500, '50')
insert into products values (8, 'paper', 'paper', 350, '50')
insert into products values (9, 'bread', 'bachery', 800, '50')
insert into products values (6, 'book', 'paper', 1000, '50')
insert into products values (8, 'laptop', 'electronics', 1500, '50')

--Use SELECT INTO to create a backup table called Products_Backup containing all Products data.

select * from products


select * from [Backup]


--Rename the Products table to Inventory.


exec sp_rename 'master.dbo.products', 'Inventory'

select * from inventory

--Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

alter table inventory 
alter column price float

--Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.


