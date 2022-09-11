Create Table EmployeeInfo_StoreProcedure(
EmpId int,
EmpName varchar(200),
Department varchar(100),
Gender char,
Salary bigint
);
Insert Into EmployeeInfo_StoreProcedure Values(1, 'Rajesh', 'Sales', 'M',40000);
Insert Into EmployeeInfo_StoreProcedure Values(2, 'Ritesh','Management','M',80000);
Insert Into EmployeeInfo_StoreProcedure Values(3, 'Hiren','Technical','F',35000);
Insert Into EmployeeInfo_StoreProcedure Values(4, 'Kapi', 'IT','F',60000);
Insert Into EmployeeInfo_StoreProcedure Values(5, 'Raja', 'HR', 'M',50000);
Insert Into EmployeeInfo_StoreProcedure Values(6, 'Mamta', 'Sales', 'F',45000);

Select * From EmployeeInfo_StoreProcedure;
------ Stored Procedure -----------

Create Procedure spGetEmpNameGender
As
BEGIN
	Select EmpName, Gender From EmployeeInfo_StoreProcedure;
END

Exec spGetEmpNameGender;

--------- Stored Procedure With Parameter ----------


Create Procedure spGetEmpByGender
@Gender char
As 
BEGIN
	Select EmpName, Department, Salary From EmployeeInfo_StoreProcedure Where Gender = @Gender ;
END

Exec spGetEmpByGender 'F';


