use employeedb;
select * from employee;
select firstname, lastname from employee;
select lastname from employee;
select distinct lastname from employee;
select * from employee where lastname='River';
select * from employee where lastname='River' and firstname='Vera';
select * from employee where lastname='River' or firstname='Jana';
select firstname, lastname, employeeid from employee where salary is null;
select firstname, lastname, employeeid from employee where salary is not null;
select * from employee order by lastname asc;
select * from employee order by lastname asc, firstname asc;
select firstname, lastname, employeeid, salary from employee; 
select firstname, lastname, employeeid, salary from employee order by lastname asc, firstname asc; 
select * from employee where salary<7000;
select firstname, lastname, employeeid, salary from employee order by salary desc;
select firstname, lastname from employee order by firstname desc, lastname asc;
/*** Shows the number of rows in the table ***/
select count(*) from employee;
/*** Shows the number of rows in the table and with the header "rowcount" ***/
select count(*) as rowcount from employee;
select count(department) from employee;
/*** Shows the number of rows without a department value ***/
select count(*)-count(department) as "missing department" from employee;
/*** Different SQL statement showing the number of rows without a department value ***/
select count(*) as "missing department" from employee where department is null;
/*** Shows the number of firstname rows ***/
select count(*), count(firstname) as "missing firstname" from employee;
/*** Shows all lastnames and the number of occurence in the table ***/
select lastname, count(*) as amount from employee group by lastname;
select lastname, count(*) as amount from employee group by lastname order by amount desc;
select lastname, count(*) as amount from employee group by lastname order by amount desc, lastname asc;
/*** Shows lastnames with a >=2 occurence ***/
select lastname, count(*) as amount from employee group by lastname having count(*)>=2;
select min(salary) as minimum, max(salary) as maximum from employee;
select avg(salary) as average
from employee;
-- Rounding the figure to two decimals
select round(avg(salary), 2) as average
from employee;
select * from employee where firstname like '_e%';
-- Returns all firstnames having the letter a 
select * from employee where firstname like '%a%';
-- Returns all firstnames ending with the letter a
select * from employee where firstname like '%a';
-- Returns all Mary_Ann or Mary-Ann datasets - or any special chars inbetween 
select * from employee where firstname like 'Mary_Ann';
select * from employee where salary between 3000 and 7000;
select * from employee where salary between 3000 and 7000 order by salary asc;
select * from employee where salary>= 3000 and salary<= 7000 order by salary desc;
-- Returns all datasets having the lastname 'Smith or 'Jones 
select * from employee where lastname in ('Smith', 'Jones');
-- Does the exact opposite of the above
select * from employee where lastname not in ('Smith', 'Jones');
-- Both line below does same thing. The word 'and' can be replaced with &
select * from employee where lastname != 'Smith' && lastname != 'Jones';
select * from employee where lastname != 'Smith' && lastname != 'Jones';
-- Using select inside select
select firstname, lastname from employee where salary=(select min(salary) from employee);
select firstname, lastname from employee where salary<(select avg(salary) from employee);
-- Using cases to sort data
select firstname, lastname, case when salary is null then 'salary missing' when salary=(select min(salary) from employee) then 'minimum salary' when salary=(select max(salary) from employee) then 'maximum salary' else 'no category defined' end as 'minmax' from employee;
-- Updating data in the database
update employee set salary=6000 where employeeid=3;
update employee set department='ICT' where employeeid=5;
update employee set salary=8000 where lastname='River';
update employee set salary=4000 where firstname='Matt';
update employee set salary=0.9*salary where department='Accounting';
update employee set department='Admin', salary=5000 where employeeId=3;
update employee set salary=4000 where department='Admin' and firstname='Vera';

delete from employee where employeeId=9;
delete from employee where department='Finance';
delete from employee where salary >= 7000;
delete from employee where department="security" or lastname='River';