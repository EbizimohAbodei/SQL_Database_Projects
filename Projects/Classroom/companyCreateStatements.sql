drop database if exists companydb;
create database companydb;

use companydb;

create table department(
    departmentId integer not null primary key,
    departmentName varchar(20) not null,
    departmentFloor varchar(15) not null
);

create table employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30),
    salary decimal(6,2) not null,
    departmentNumber integer not null,
    foreign key(departmentNumber) references department(departmentId)
);

insert into department values(1, "ict", "basement");
insert into department values(2, "admin", "top floor");
insert into department values(3, "security", "secret location");
insert into department values(4, "maintenance", "workshop");
insert into department values(5, "transportation", "garage");

insert into employee values(1,'Mary','River',4000,1);
insert into employee values(2,'Daniel','Giggs',2500.43,5);
insert into employee values(3,'Damon','Tarmo',3450,3);
insert into employee values(4,'Annella','Briggins',3200.45,2);
insert into employee values(5,'George','Lawrence',5200,1);
insert into employee values(6,'Luca','Toni',2500.75,3);
insert into employee values(7,'Vera','Jones',2950,4);
insert into employee values(8,'Peter','Murdock',4340,2);
insert into employee values(9,'Ryan','Walter',3200,4);
insert into employee values(10,'Layla','Driver',3200,5);

drop user if exists 'administrator'@'localhost';
create user 'administrator'@'localhost' identified by 'HN6##hZZzM';
grant all privileges on companydb.* to 'administrator'@'localhost';

