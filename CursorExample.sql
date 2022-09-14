------------------ SQL Cursor Demo ----------------

Create Table EmployeeInfo_Cursor(
EmpId int,
EmpName varchar(200),
Department varchar(100),
Gender char,
Salary bigint,
);

Insert Into EmployeeInfo_Cursor Values(1, 'Rajesh', 'Sales', 'M',40000);
Insert Into EmployeeInfo_Cursor Values(2, 'Ritesh','Management','M',80000);
Insert Into EmployeeInfo_Cursor Values(3, 'Hiren','Sales','F',35000);
Insert Into EmployeeInfo_Cursor Values(4, 'Kapi', 'IT','F',60000);
Insert Into EmployeeInfo_Cursor Values(5, 'Raja', 'IT', 'M',50000);
Insert Into EmployeeInfo_Cursor Values(6, 'Mamta', 'Sales', 'F',45000);

Select * From EmployeeInfo_Cursor

----------- Without Cursor Variables -----------
Declare MyCursor Cursor Scroll For Select * From EmployeeInfo_Cursor
Open MyCursor
Fetch First From MyCursor
Fetch Next From MyCursor
Fetch Last From MyCursor
Fetch Prior From MyCursor
Fetch Absolute 3 From MyCursor
Fetch Relative -1 From MyCursor
Close MyCursor
Deallocate MyCursor 





---------- With Cursor Variables ---------

Declare MyCursor Cursor Scroll For Select EmpId, EmpName From EmployeeInfo_Cursor
Declare @Emp_Id int , @Emp_Name varchar(100) 
Open MyCursor
Fetch First From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Fetch Next From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Fetch Last From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Fetch Prior From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Fetch Absolute 3 From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Fetch Relative -1 From MyCursor Into @Emp_Id ,@Emp_Name
Print 'Employee is :' + Cast(@Emp_Id as varchar(50)) + ' ' + @Emp_Name

Close MyCursor
Deallocate MyCursor 