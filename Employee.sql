--UC-1 create database
create database Payroll_Service
--UC-2 create table
create table EmployeePaayroll(ID int identity(1,1)primary key,Empname varchar(200),salary bigint,Startdate date)
--UC-3 insert record
insert into EmployeePaayroll values ('Neha',45000,'2018-01-01','F')


