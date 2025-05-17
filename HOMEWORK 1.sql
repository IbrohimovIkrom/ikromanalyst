'data' is collection of every information related to individual, corporations,nature,animals,natural resources and the  like. 
It may come in a different way such as , form of text ,pictures,numbers, graphs.

'database' is a collection of certain  informations which is structured electronically in a computer system.
It is usually handles by the database management system

A relational database is a type of database that stores and provides access to data points that are related to one another. 
It organizes data into tables , which consist of rows and columns.

Tables are the essential objects in a database. Because it saves certain informations related to organization,groups,individuals and etc.


SQL Server provides strong security features to protect data.
Here is the 5 key features of SQL SERVER 
High Availability and Disaster Recovery
 Scalability and Performance
  Integration and Business Intelligence (BI)
  Comprehensive Data Tools and Management




create database SchoolDB
create table schoolDB(studentID int, name varchar(50), Age int,)

use [SchoolDB]
 
 SQL server handle huge amount of databases which is used by organizations.
 SSMS is  graphical user interface tool.That is able  to manage, configure, query, and administer SQL Server databases. It's a customer tool that interacts with SQL Server.
 SQL is a programming language that one is going to be used for  managing relational databases,that interacts with DQL (DATA QUERY LANGUAGE), DDL (DATA DEFINITION LANGUAGE), DML (DATA MANIPULATION LANGUANGE), DCL (DATA CONTROL LANGUAGE)

 Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.

 DQL (DATA QUERY LANGUAGE)
 DQL is consists of only 'select'
 we use from DQL to select necessary information for example: 
 select 'hello world'
 
DML (DATA MANIPULATION LANGUANGE),

this is going to used for manipulation informations
this interacts with :
insert into - we can add data
update- we can change amount of data inside of the table
delete - we can use to remove all informations for specific raw

DDL is one of the main language in SQL. It is going to be used for creating tables
, removing table structures and informations, we can see some examles below:

create - is used for databases , tables and the  like
drop - is used for removing table structure and informations
alter - is used for changing onlu object structure not information
truncate - is used to delete informations inside of the table



DCL (DAT CONTROL LANGUAGE)
 This language is used to grant or revoke certain access rights.


 TCL (TRANSACTION CONTROL LANGUAGE)
 THhis language is consists of 3 commands : begin,commit,rollback
 this one is used in performing test tasks, 
 for example: 

 begin,
 commit,
 rollback

 begin transaction
 drop table schoolDB
 rollack trans


 commit transaction


 we will choose 'database ' section '+' and choose  AdventureWorksDW2022.bak  then click right side of the mouse then will find 'tasks'
 , 'restore', 'database' then we will have 2 options database and device , we need to click on the database then OK.
 As a result our file will restored successfully.