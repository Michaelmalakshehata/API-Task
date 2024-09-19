create table Employees(
EmployeeID SERIAL primary key,
Employeename varchar(100) not null,
Department varchar(100) not null,
Salary decimal check (Salary > 0)
)

