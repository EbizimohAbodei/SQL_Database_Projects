use companydb3;

select firstname, lastname, departmentName as `head of this department` from employee inner join headOfDepartment on headOfDepartment.employeeId=employee.employeeId inner join department on headOfDepartment.departmentId=department.departmentId order by lastname desc firstname desc;

select lastname, firstname, departmentName from employee left join headOfDepartment on headOfDepartment.employeeId=employee.employeeId left join department on headOfDepartment.departmentId=department.departmentId where departmentName is null;

select lastname, firstname from employee left join headOfDepartment on headOfDepartment.employeeId=employee.employeeId where departmentId is null;

select distinct lastname, firstname from employee inner join headOfDepartment on headOfDepartment.employeeId=employee.employeeId;

delete from headOfDepartment where departmentId=5;

select departmentName from department left join headOfDepartment on headOfDepartment.departmentId=department.departmentId;

select departmentName from department inner join headOfDepartment on headOfDepartment.departmentId=department.departmentId;

-- Insert into headOfDepartment (5, 3);