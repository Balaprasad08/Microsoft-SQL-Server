--Creation of DB
create database prasad_db

--How Can We use DB
use prasad_db

--Creation of Table in DB
create table prasad_table
(id int, Name nvarchar(20),Salary int,Addrs nvarchar(100))

--Select the Table all Records(*)
select * from prasad_table

--Add/Insert Records into Table
insert into prasad_table values(1,'Prasad',59000,'Pune')
select * from prasad_table

--Delete All Records from Table
delete from prasad_table
select * from prasad_table

--Add/Insert Records into Table
insert into prasad_table values(1,'Prasad',59000,'Pune')
insert into prasad_table values(2,'Pravin',52000,'Mumbai')
insert into prasad_table values(3,'Sanket',48000,'Nanded')
insert into prasad_table values(4,'Sandy',35000,'Hyderabad')
insert into prasad_table values(5,'Ganesh',62000,'Deccan')
insert into prasad_table (id,Name) values(6,'Sonali')
insert into prasad_table (Addrs) values('Ranchi')
select * from prasad_table

--Delete Single Records from Table using (Where Clause)
delete from prasad_table where id=4
select * from prasad_table

delete from prasad_table where Addrs='Ranch'
select * from prasad_table

--Update Record in Table using (Set clause)
update prasad_table set Name='Ved' where Addrs='Ranchi'
update prasad_table set id=7 where Name='Ved' 
select * from prasad_table

--Where Clause
select * from prasad_table where id=3
select id from prasad_table where id=3
select id,Name from prasad_table where id=3
select id,Name,Salary from prasad_table where id=3
select id,Name,Salary,Addrs from prasad_table where id=3

--Operators(AND,OR,NOT) with Where Clause
--AND Operator(Both Condition Must True)
select * from prasad_table where name='Pravin' And Salary=52000
select * from prasad_table where name='Sanket' And Salary=52000

--OR Operator(One Condition Will Must True)
select * from prasad_table where name='Pravin' Or Salary=52000
select * from prasad_table where name='Sanket' Or Salary=52000
select * from prasad_table where name='Shweta' Or Salary=100000

--Not(Condition will Not True)
select * from prasad_table where Not Name='Prasad'
select * from prasad_table where Not id=5

--Order by(Use for Sorting) asc/desc
--asc
select * from prasad_table order by Name
select * from prasad_table order by Salary
select * from prasad_table order by Addrs
select * from prasad_table order by id asc

--desc
select * from prasad_table order by id desc
select * from prasad_table order by Salary desc
select * from prasad_table order by Name desc

--is null/is not null (using where clause)
--is null
select * from prasad_table where Salary is null
select * from prasad_table where Addrs is null
select id,Addrs from prasad_table where Salary is null

--is not null
select * from prasad_table where Addrs is not null
select * from prasad_table where Salary is not null
select Name,Salary from prasad_table where Salary is not null

--using Both
select * from prasad_table where(Salary is null And Addrs is not null)
select * from prasad_table where(Salary is null or Addrs is not null)
select * from prasad_table where(Salary is not null And Addrs is null)

--Add Column, Drop Column, Change Column Datatype(using Alter Table)
--Alter(Add Colunn)
alter table prasad_table add Mobile_Num nvarchar(12)
select * from prasad_table
insert into prasad_table values(8,'Lipsa',49000,'Odisa','9865432876')
select * from prasad_table
select * from prasad_table order by id

--Alter(Change Data type)
alter table prasad_table alter column Mobile_Num varchar(12)
select * from prasad_table

--Alter(delete column)
alter table prasad_table drop column Mobile_Num
select * from prasad_table

--Datatypes in SQL(tinyint,smallint,int,bigint)
--declare Variables in SQL
--tinyint(1 byte 0-255)
declare @bala tinyint
set @bala=255
select @bala

--smallint(2 bytes -32,768 to +32767)
declare @small smallint
set @small=-400
select @small

--int(4 bytes -2,147,483,648 to 2,147,483,647)
declare @init int
set @init=-35000
select @init


--bigint(8 bytes -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
declare @big bigint
set @big=-100000
select @big

--bit(0,1,null)
declare @bit bit
set @bit=-null
select @bit

--Decimal
declare @a decimal(7,2)
set @a=487.47625367848
select @a

--Numeric
declare @b numeric(7,2)
set @b=487.47625367848
select @b

--Datatypes in SQL Character Strings (char,nchar,varchar,nvarchar)
--char(1-8000 character,8000 bytes)
declare @aa char(77)
set @aa='Balarpasad Garaudkar'
select @aa

--nchar(1-4000 character,8000 bytes)
declare @bb nchar(77)
set @bb='Mukesh Garaudkar'
select @bb

--varchar(1-8000 character,8000 bytes)
declare @cc varchar(77)
set @cc='Govindrao Garaudkar'
select @cc

--nvarchar(1-8000 character,8000 bytes)
declare @dd nvarchar(77)
set @dd='Balaprasad@#$% Govindrao!@#$%^&* Garaudkar*&^()%#^*('
select @dd

--nvarchar(1-8000 character,8000 bytes)
declare @dd nvarchar(77)
set @dd=N'你跟我一起去吗？他现在已经在路上了'
select @dd

declare @dd nvarchar(77)
set @dd=N'అర్ధం అయ్యడం'
select @dd

--Date & Time
declare @ee date
set @ee=GETDATE()
select @ee

declare @ee Date
set @ee='12-12-2020'
select @ee

--Time
declare @ee Time
set @ee='12:12:12'
select @ee

--Float & Real
declare @ff float
set @ff='12.12345467584635'
select @ff

declare @gg real
set @gg='12.12345467584635'
select @gg

--Constraint in SQL/DBMS - (null / notnull, check, default , unique, pk and fk constraints)
create table bala
(Id int primary key,
Name1 nvarchar (50) Not null,
Roll_No int unique,
Date1 date default getdate(),
Serial_Number int identity(1,1))
select * from bala

insert into bala values(122,'Akash',13,'08-04-2020')
insert into bala values(123,'Akash',14,'08-04-2020')
select * from bala

insert into bala(id,Name1,Roll_No) values(432,'Chetan',54)
select * from bala

--Operators in SQL
--Arithmetic Operatior
select 10+10
select 10-10
select 10*10
select 10/10
select 10%10
select 2%10

--Comparison Operatior
declare @a int
set @a=10
select @a where 10>20
select @a where 10 < 20
select @a where 10 <= 20
select @a where 10 >= 20
select @a where 10 <> 20

--Bit wise Operator
select 1&2 --(Bit wise AND)
select 1&1
select 1|2	--(Bit wise OR)
select 1^2	--(Bit wise XOR
select ~2 --(Bit wise NOT
select ~4

--Max, Min and Top Function in SQL
select * from prasad_table
select max(Salary) from prasad_table
select min(Salary)from prasad_table
select top 3(salary)from prasad_table

--Aggregate functions in SQL
select count(id) from prasad_table
select count(Name) from prasad_table
select Avg (salary) from prasad_table
select sum(salary) from prasad_table

--Subqueries in SQL
select Salary from prasad_table where Salary>50000
select Salary from prasad_table where Salary>(select max(Salary)from prasad_table)
select Salary from prasad_table --Outer Query
where Salary>=(select max(Salary)from prasad_table)--inner query

create table Loan(Loan_id int primary key,Branch nvarchar (20),Amount int)
select * from Loan
insert into Loan values(11,'Pune',40000)
insert into Loan values(12,'Mumbai',50000)
insert into Loan values(13,'Nagpur',60000)

select * from Loan

create table Borrower(Customer_Name nvarchar(50),Loan_id int primary key)

insert into Borrower values('Prasad',11)
insert into Borrower values('Shweta',12)
insert into Borrower values('Rohini',14)


select * from Loan
select * from Borrower

--Inner Join
select Loan.Loan_id,Branch,Amount,Customer_Name from Loan inner join Borrower on Loan.Loan_id=Borrower.Loan_id

--Left Join
select Loan.Loan_id,Branch,Amount,Customer_Name from Loan left join Borrower on Loan.Loan_id=Borrower.Loan_id

--Right Join
select Loan.Loan_id,Branch,Amount,Customer_Name from Loan right join Borrower on Loan.Loan_id=Borrower.Loan_id

--Primary Key & Foreign key Concept

create table Depart1(
id int primary key,
Dept_Name nvarchar (50),
Location nvarchar (50),
Dept_head nvarchar (50)
)
select * from Depart1

Insert into Depart1 values (1, 'FINANCE', 'Pune', 'Harry')
Insert into Depart1 values (2, 'PRODUCTION', 'Mumbai', 'Sami')
Insert into Depart1 values (3, 'HR', 'Nanded', 'Shivani')
Insert into Depart1 values (4, 'UNKNOWN', 'Latur', 'Rohini')
select * from Depart1

create table Employ1(
id int primary key,
Name nvarchar (50),
Gender nvarchar (10),
Salary int,
key_table int foreign key references Depart1(id)
)

select * from Employ1

Insert into Employ1 values (1, 'Tom', 'Male', 4000, 1)
Insert into Employ1 values (2, 'Pam', 'Female', 3000, 3)
Insert into Employ1 values (3, 'John', 'Male', 3500, 1)
Insert into Employ1 values (4, 'Sam', 'Male', 4500, 2)
Insert into Employ1 values (5, 'Todd', 'Male', 2800, 2)
Insert into Employ1 values (6, 'Ben', 'Male', 7000, 1)
Insert into Employ1 values (7, 'Sara', 'Female', 4800, 3)
Insert into Employ1 values (8, 'Valarie', 'Female', 5500, 1)
Insert into Employ1 values (9, 'James', 'Male', 6500, NULL)

--Inner Join concept
select Name,Gender,Salary,Dept_name,Location,Dept_head from Depart1 inner join Employ1 on Depart1.id=Employ1.key_table

--left join concept
select Name,Gender,Salary,Dept_name,Location,Dept_head from Depart1 left join Employ1 on Depart1.id=Employ1.key_table

--Right join concept
select Name,Gender,Salary,Dept_name,Location,Dept_head from Depart1 right join Employ1 on Depart1.id=Employ1.key_table

--full Outer join concept
select Name,Gender,Salary,Dept_name,Location,Dept_head from Depart1 full outer join Employ1 on Depart1.id=Employ1.key_table
select Name,Gender,Salary,Dept_name,Location,Dept_head from Depart1 full join Employ1 on Depart1.id=Employ1.key_table

