----- Creating DataBase -----------
Create Database CompanyDB;

------- Creating Table --------
Create Table CustomerInfo(
CustomerId int Primary Key,
Name varchar(100),
Email varchar(100),
Phone bigint,
City varchar(20)
);


select * from CustomerInfo;

-------- Inserting The Data In Table ---------

Insert Into CustomerInfo
Values(1, 'Vishwas', 'vishwas@gmail.com', 11111111, 'Bangalore'),
(2, 'Vivek', 'vivek@gmail.com', 22222222, 'Mumbai'),
(3, 'Siddhant', 'siddhant@gmail.com', 33333333, 'Pune'),
(4, 'Shobhit', 'shobhit@gmail.com', 44444444, 'Indore'),
(5, 'Avinash', 'avinash@gmail.com', 55555555, 'Bhopal');

select * from CustomerInfo;

----- Adding New Column To Table ----

Alter Table CustomerInfo
Add State varchar(20);

------ Deleting Column From Table ------
Alter Table CustomerInfo
Drop State ;

------- Fetching Specific Column From Table -------

Select Email From CustomerInfo;
Select Name, Phone From CustomerInfo;

------ Fetching Column Data With Where Condition -----

Select * From CustomerInfo Where City = 'Bangalore';
Select * From CustomerInfo Where Name = 'Avinash';
 

------ Updating Data In Table --------

Update CustomerInfo Set City = 'Delhi' Where CustomerId = 4;
Update CustomerInfo Set Email = 'avi@gmail.com' Where Name = 'Avinash';

------ Fetching Data Using Like Operator -------

Select * From CustomerInfo Where City Like 'K%';
Select * From CustomerInfo Where Name Like '%t';

------- Sorting Data Using Order By -------
Select * From CustomerInfo Order By Name;

------- Using Group By Operator ------
Select * From CustomerInfo Group By City;

---------- Adding Another Table In Database ----------
Create Table OrderInfo(
OrderId int,
CustomerId int Primary Key,
OrderDate Date
);
Select * From OrderInfo;

------- Insert Data In Table --------

Insert Into OrderInfo
Values(101,1,'2022-05-02'),
(102,2,'2022-06-04'),
(103,3,'2021-07-03'),
(104,4,'2023-06-06'),
(105,5,'2020-09-04')
;

-------- Joining The Two Tables -------

Select OrderInfo.OrderId, CustomerInfo.Name, OrderInfo.OrderDate From OrderInfo
Inner Join CustomerInfo ON CustomerInfo.CustomerId = OrderInfo.CustomerId;

------- Creating Empty Table --------
Create Table CustomerInfoBackup(
CustomerId int Primary Key,
Name varchar(100),
Email varchar(100),
Phone bigint,
City varchar(20)
);

-------- Copy The data From One Table To Another ------
Insert Into CustomerInfoBackup Select * From CustomerInfo;