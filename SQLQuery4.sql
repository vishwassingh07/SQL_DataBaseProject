Create DataBase EmployeeDataBase;

Create Table Company(
CompanyId int Primary Key,
CompanyName varchar(100)
);

Insert Into CompanyInfo Values (1, 'Tata');
Insert Into CompanyInfo Values (2, 'Reliance');
Insert Into CompanyInfo Values (3, 'Adani');
Insert Into CompanyInfo Values (4, 'Mahindra');

select * from CompanyInfo;

Create Table EmployeeInfo(
EmpID int identity(1,1) Primary Key,
CompanyId int References CompanyInfo(CompanyId),
EmpName varchar(200),
Gender char(1),
Phone bigint,
Designation varchar(100),
Salary decimal,
);

alter table EmployeeInfo drop column EmpId;


Insert Into EmployeeInfo 
Values(1, 'Vishwas', 'M', 987654321, 'Developer', 60000),
(3, 'Vivek', 'M',963258741, 'Manager', 70000),
(4, 'Archana', 'F', 852369741, 'Sales', 55000),
(2, 'Rahul', 'M', 741258963, 'Tester', 45000),
(3, 'Rachna', 'F', 778896325, 'Receptionist', 40000);
select * from EmployeeInfo;

Create Table DepartmentInfo(
DepartmentId int Primary Key,
Department varchar(100),
EmpId int References EmployeeInfo(EmpId)
);
select * from DepartmentInfo;