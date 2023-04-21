use companydb;

select * from department;
select * from employee;
select salary from employee where firstname='Mary' and lastname='River';

select department from employee, department where departmentNumber=departmentId and firstname='Mary';

select firstname, lastname, departmentName from employee, department where departmentNumber=departmentId and departmentName='ICT';

select firstname, lastname, departmentName from employee, department where employee.departmentNumber=department.departmentId and departmentName='ICT';

select firstname, lastname, departmentName from employee inner join department on employee.departmentNumber=department.departmentId where departmentName ='ict';

select * from employee join department on departmentNumber=departmentId;

select lastname, firstname, departmentName, departmentFloor from employee inner join department on departmentNumber=departmentId;

select lastname, firstname, departmentName, departmentFloor from employee inner join department on departmentNumber=departmentId order by departmentFloor asc, lastname asc, firstname asc;

select firstname, lastname, departmentName, departmentFloor, salary from employee inner join department on departmentNumber=departmentId where lastname='Driver';

select avg(salary) as 'ICT average'
from employee where departmentNumber=1;

select avg(salary) as 'ICT average'
from employee inner join department on departmentNumber=departmentId where departmentName='ict';

select avg(salary) as average from employee inner join department on departmentNumber=departmentId where departmentName='ict';

select firstname, lastname, departmentName, salary from employee inner join department on departmentNumber=departmentId where salary=(select min(salary) from employee);

select firstname, lastname, departmentName, salary from employee inner join department on departmentNumber=departmentId where salary>(select avg(salary) from employee);

select firstname,lastname,departmentName,salary, case 
when salary>(select avg(salary) from employee) then 'Above Average'
when salary<(select avg(salary) from employee) then 'Below salary' 
else 'average' end as 'Salary level' from employee inner join department on departmentNumber=departmentId;

select avg(salary) from employee;

select firstname, lastname, departmentFloor from employee inner join department on departmentNumber=departmentId;

select firstname, lastname, departmentFloor from employee inner join department on departmentNumber=departmentId;

select firstname, lastname, departmentFloor from department inner join employee on departmentNumber=departmentId;

select departmentName, firstname from department inner join employee on departmentNumber=departmentId;

-- Shows all departments, even ones without staff
select departmentName, firstname from department left join employee on departmentNumber=departmentId;

select departmentName, firstname from department left join employee on departmentNumber=departmentId where firstname is null;

select departmentName, count(employeeId) as 'number of employees' from department left join employee on departmentId=departmentNumber group by departmentId;

select departmentName, count(employeeId) as 'number of employees' from department inner join employee on departmentId=departmentNumber group by departmentId;

select departmentName, count(employeeId) as 'number of employees' from department inner join employee on departmentId=departmentNumber group by departmentId order by departmentName;

select departmentName, count(employeeId) as 'number of employees' from department left join employee on departmentId=departmentNumber group by departmentId order by `number of employees` desc;

select departmentName, count(employeeId) as 'numbOfEmp' from department left join employee on departmentId=departmentNumber group by departmentId order by `numbOfEmp` desc;

select departmentName, count(employeeId) as 'numbOfEmp' from department left join employee on departmentId=departmentNumber group by departmentId having `numbOfEmp` >2 order by `numbOfEmp` desc;

select departmentName, count(employeeId) as 'Number of Employees' from department inner join employee on departmentId=departmentNumber group by departmentId;

select departmentName, count(employeeId) as 'Number of Employees', min(salary) as 'Minimum Salary' from department inner join employee on departmentId=departmentNumber group by departmentId;

select departmentName, count(employeeId) as 'Number of Employees', min(salary) as 'Minimum', max(salary) as 'Maximum', avg(salary) as 'Average' from department inner join employee on departmentId=departmentNumber group by departmentId;

select departmentName, count(employeeId) as 'Number of Employees', min(salary) as 'Minimum', max(salary) as 'Maximum', avg(salary) as 'Average' from department left join employee on departmentId=departmentNumber group by departmentId;

-- coalesce turns all null fields to zero(0) instead
select departmentName, count(employeeId) as 'Number of Employees', coalesce(min(salary),0) as 'Minimum', max(salary) as 'Maximum', avg(salary) as 'Average' from department left join employee on departmentId=departmentNumber group by departmentId;

