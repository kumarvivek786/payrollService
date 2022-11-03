--UC-1 create database
create database Payroll_Service
--UC-2 create table
create table EmployeePaayroll(ID int identity(1,1)primary key,Empname varchar(200),salary bigint,Startdate date)
--UC-3 insert record
insert into EmployeePaayroll values ('Neha',45000,'2018-01-01','F')
--UC-4 retrive data
select * from EmployeePaayroll
--UC-5 
select * from EmployeePaayroll where Startdate between CAST('2020-01-01' As date) and getdate()
--UC-6
alter table EmployeePaayroll add Gender char(1)
update EmployeePaayroll set Gender='M' where Empname='Bill'
--UC-7
select Sum(salary)as Total_sum from EmployeePaayroll where Gender='M' group by Gender
select avg(salary)as Avgsalary from EmployeePaayroll where Gender='M' group by Gender
select min(salary)as Minsalary from EmployeePaayroll where Gender='M' group by Gender
select count(*)as totalrecord from EmployeePaayroll group by gender
--UC-8
alter table EmployeePaayroll add phonenumber bigint,Address varchar(200),
Department varchar(200) not null default('tester')



