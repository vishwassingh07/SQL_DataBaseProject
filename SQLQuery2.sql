Create DataBase CFP_CompanyDataBase;

Create Table CompanyInfo(
CompanyId int Primary Key,
CompanyName varchar(100)
);
Insert Into CompanyInfo Values (1, 'Tata');
Insert Into CompanyInfo Values (2, 'Reliance');
Insert Into CompanyInfo Values (3, 'Adani');
Insert Into CompanyInfo Values (4, 'Mahindra');

Select * From CompanyInfo;

Create Table EmployeeInfo(
EmpID int identity(101,1) Primary Key,
CompanyId int References CompanyInfo(CompanyId),
EmpName varchar(200),
Gender char(1),
Phone bigint,
Designation varchar(100),
Salary decimal,
);
Insert Into EmployeeInfo Values (1, 'Vishwas', 'M', 987654321, 'Developer', 60000);
Insert Into EmployeeInfo Values (3, 'Vivek', 'M',963258741, 'Manager', 70000);
Insert Into EmployeeInfo Values (4, 'Archana', 'F', 852369741, 'Sales', 55000);
Insert Into EmployeeInfo Values (2, 'Rahul', 'M', 741258963, 'Tester', 45000);
Insert Into EmployeeInfo Values (3, 'Rachna', 'F', 778896325, 'Receptionist', 40000);

select * from EmployeeInfo;

Create Table DepartmentInfo(
DepartmentId int Primary Key,
Department varchar(100),
EmpId int References EmployeeInfo(EmpId)
);
Insert Into DepartmentInfo Values (23, 'Developer' ,101 );
Insert Into DepartmentInfo Values (25, 'Manager',102);
Insert Into DepartmentInfo Values (26, 'Sales',103);
Insert Into DepartmentInfo Values (30, 'Receptionist', 105);

Select * From DepartmentInfo;


Select EmployeeInfo.EmpID, DepartmentInfo.Department, EmployeeInfo.EmpName From DepartmentInfo
Inner Join EmployeeInfo ON DepartmentInfo.EmpId = EmployeeInfo.EmpID;

Select DepartmentInfo.Department, EmployeeInfo.EmpID From EmployeeInfo
Left Join DepartmentInfo ON DepartmentInfo.EmpId = EmployeeInfo.EmpID;

Select DepartmentInfo.DepartmentId, EmployeeInfo.EmpName From DepartmentInfo
Right Join EmployeeInfo ON DepartmentInfo.EmpId = EmployeeInfo.EmpID;

Select EmployeeInfo.EmpName, DepartmentInfo.DepartmentId From EmployeeInfo
FULL OUTER JOIN DepartmentInfo ON DepartmentInfo.EmpId = EmployeeInfo.EmpID;