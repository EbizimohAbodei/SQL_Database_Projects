use companydb4;

select * from department;
select * from employee;
select * from employeePosition;
select * from workerOfDepartment;

select distinct lastname, firstname, departmentName, positionName from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId inner join department on department.departmentId=department.departmentId inner join employeePosition on employeePosition.positionId=employeePosition.positionId order by lastname asc, firstname asc, departmentName asc;

select distinct lastname, firstname, departmentName, positionName from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId inner join department on department.departmentId=department.departmentId inner join employeePosition on employeePosition.positionId=employeePosition.positionId where positionName = 'team-lead' order by lastname asc, firstname asc, departmentName asc;

select distinct lastname, firstname, departmentName, case when positionName='team-lead' then 'boss' else '' end as Lead from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId inner join department on department.departmentId=department.departmentId inner join employeePosition on employeePosition.positionId=employeePosition.positionId where departmentName='ict';