drop database if exists employeedb;
create database employeedb;
use employeedb;

create table employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    department varchar(15),
    salary decimal(6,2)
);

drop user if exists 'maria'@'localhost'; 
create user 'maria'@'localhost' identified by '1234';
grant all privileges on employeedb.* to 'maria'@'localhost';

insert into employee values(1,'Matt','River','ICT', 5000.45);
insert into employee values(2,'Anna','James','Admin', 2300);
insert into employee(employeeId,firstname,lastname)
values(3, 'Vera','River');
insert into employee values(4,'Jana','Erics','Admin', null);
insert into employee(salary,employeeId,department, firstname,lastname)
values(3399, 5, 'Human Resource', 'Anthony','Givings');
insert into employeedb.employee values(6,'Jessica','Trunk','Accounting',4000);

drop user if exists 'MariaPractice'@'localhost';
create user 'MariaPractice'@'localhost' identified by 'HN6##hZZzM';
grant all privileges on employeedb.* to 'maria'@'localhost';