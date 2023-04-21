--- companydb5
select lastname,firstname, departmentName from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId inner join department on department.departmentId=department.departmentId where departmentName='ict' order by firstname asc, lastname asc;

select lastname,firstname from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId where workerOfDepartment.departmentId=1;

select lastname,firstname, departmentName, positionName from employee inner join workerOfDepartment on workerOfDepartment.employeeId=employee.employeeId inner join department on department.departmentId=department.departmentId inner join employeePosition on workerOfDepartment.positionId=employeePosition.positionId where departmentName='ict' and positionName ='team-lead' order by firstname asc, lastname asc;