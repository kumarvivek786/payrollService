--UC-1 create database
create database Payroll_Service
--UC-2 create table
create table EmployeePaayroll(ID int identity(1,1)primary key,Empname varchar(200),salary bigint,Startdate date)
--UC-3 insert record
insert into EmployeePaayroll values ('Neha',45000,'2018-01-01')
insert into EmployeePaayroll values ('Vivek',46000,'2020-01-01')
--UC-4 retrive data
select * from EmployeePaayroll
--UC-5 
select * from EmployeePaayroll where Startdate between CAST('2018-01-01' As date) and getdate()
alter table EmployeePayroll add Gender char(1)
update EmployeePayroll set Gender='M' Where Empname='vivek'
update EmployeePayroll set Gender='M' Where Empname='charlie'
--UC-7
select Sum(salary)as Total_sum from EmployeePaayroll where Gender='M' group by Gender
select avg(salary)as Avgsalary from EmployeePaayroll where Gender='M' group by Gender
select min(salary)as Minsalary from EmployeePaayroll where Gender='M' group by Gender
select count(*)as totalrecord from EmployeePaayroll group by gender


