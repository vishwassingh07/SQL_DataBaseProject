Create Table EmployeeInfo_Index(
EmpId int,
EmpName varchar(200),
Department varchar(100),
Salary bigint
);

Insert Into EmployeeInfo_Index Values(1, 'Rajesh', 'Sales',40000);
Insert Into EmployeeInfo_Index Values(2, 'Ritesh', 'Management',80000);
Insert Into EmployeeInfo_Index Values(3, 'Hiren', 'Technical',35000);
Insert Into EmployeeInfo_Index Values(4, 'Kapi', 'IT',60000);
Insert Into EmployeeInfo_Index Values(5, 'Raja', 'HR',50000);
Insert Into EmployeeInfo_Index Values(6, 'Mahesh', 'Sales',45000);

Select * From EmployeeInfo_Index;
---------------- Indexes ------------------
Create Index IX_TableEmployeeSalary
ON  EmployeeInfo_Index (Salary ASC);

sp_helpindex EmployeeInfo_Index;

Create Clustered Index IX_TableEmp_Name_Departement
ON EmployeeInfo_Index (EmpName ASC, Department DESC);

Create NonClustered Index IX_TableEmp_Salary
ON EmployeeInfo_Index(Salary);
