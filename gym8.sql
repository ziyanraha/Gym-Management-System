create database gym8
use gym8

--drop database gym8
create table  Manager(
ManagerID	Int identity(1,1) not null primary key, 
ManagerName	Varchar(50)	 Null,
AppointDate	date  Null,
Salary	Numeric(8,2)  Null,
Man_work_hour	int Null,
);
insert into Manager(ManagerName, AppointDate, Salary, Man_work_hour)
values  ('Saad','2019-01-01', 30000.00, 8),
		('Aasim','2019-05-01', 27000.00, 7),
		('Zain','2019-07-01', 25000.00, 7);

create table Staff(
StaffId	Int	identity(500,1) not null primary key,
StaffName Varchar(50)  Null,
Staff_work_hour	Int	 Null,
Staff_join_date	Date	 Null,
Staff_leave_date	Date	 Null,
Staff_work_as varchar(50)  null,
Staff_salary	Numeric(7,2)	 Null,
ManagerID	Int	not null FOREIGN KEY REFERENCES Manager(ManagerID),
 );
insert into Staff(StaffName,Staff_work_hour, Staff_join_date, Staff_leave_date, Staff_work_as, Staff_salary, ManagerID)
values  ('Manik', 8, '2019-01-01', '2024-01-01','Service technicians', 10000.00, 1),
		('Faisal', 9, '2019-08-01', '2023-08-01','Massage therapist', 11000.00, 2),
		('Saikat', 8, '2020-12-01', '2025-12-01','Group fitness instructor', 10000.00, 1),
		('Mahabub', 8, '2019-01-01', '2024-01-01','Maintainance personnel', 10000.00, 1),
		('Pial', 8, '2020-03-01', '2023-03-01','Nuitrition consultant', 9000.00, 3),
		('Mishal', 10, '2019-12-01', '2023-12-01','Fitness consultant', 9000.00, 3),
		('Arslaan', 9, '2019-07-01', '2025-07-01','Front desk associate', 9500.00, 2),
		('Faisal', 9, '2019-08-01', '2024-08-01','Facility supervisor', 12500.00, 2);

create table Trainer( 
Trainer_name Varchar(50)	 Null,
TrainerID	Int	identity(3000,1) not null primary key, 
Trainer_work_hour	Int	 Null,
Trainer_rating	varchar(10)	Null,
Trainer_salary	int	 Null,
Trainer_join_date	Date	 Null,
);

insert into Trainer(Trainer_name, Trainer_join_date, Trainer_rating, Trainer_salary, Trainer_work_hour)
values	('Labeeb', '2019-05-01', '3 star', 10000, 9),
		('Shamim', '2019-03-01', '2 star', 9500, 9),
		('Fahim', '2019-02-01', '3 star', 10000, 9),
		('Usman', '2019-07-01', '5 star', 11000, 10),
		('Amir', '2019-01-01', '4 star', 10000, 9);

--alter table Customers add packId varchar(20) null;
create table Customers (
Customer_name	Varchar(50)	 Null,
CustomerId	Int	identity(1000,1) not null primary key,
Cust_join_date	Date	 Null,
Cust_height	Varchar(50)	 Null,
Cust_weight	Varchar(50)	 Null,
Cust_pay_amount	Numeric(8,2)  null,
Exc_type Varchar(50)  Null,
ManagerID	Int	not null FOREIGN KEY REFERENCES Manager(ManagerID),
TrainerId int not null foreign key references Trainer(TrainerId),
packId varchar(20) null

);


insert into customers(Customer_name,Cust_join_date, Cust_height, Cust_weight, Exc_type, Cust_pay_amount, ManagerID, TrainerId,packId)
values  ('Rahim','2020-01-01','1.69m','59kg','Abs',12000.00,1,3003,2),
		('Jack','2021-02-23','1.732m','60kg','Back',15000.00,1,3004,3),
		('Alex','2022-03-07','1.701m','66kg','Arms',16000.00,2,3002,4),
		('Arafah','2020-04-11','1.794m','71kg','Chest',15500.00,3,3004,3),
		('Yasir','2022-05-21','1.733m','73kg','Abs',12900.00,2,3003,4),
		('Riya','2019-09-05','1.68m','63kg','Chest',10000.00,2,3000,5),
		('Mira','2021-02-01','1.701m','65kg','Arms',14000.00,3,3003,6);

create table  Equipments(
Equip_name	Varchar(50)	 Null,
Equip_buy_date	Date  Null,
Equip_maintenance varchar(50)  Null,
Equip_payment_ID	Int	Not Null,
Equip_cost	Numeric(8,2)	 Null
);

insert into Equipments(Equip_name, equip_buy_date, Equip_maintenance, Equip_payment_ID, Equip_cost)
values ('Power rack','2019-01-01', '6 months', 23414, 40000.00),
		('Chest press machine','2019-01-01', '4 months', 23451, 18000.00),
		('Lat pulldown machine ','2020-01-01', '2 months', 26432, 34000.00),
		('Roman chair','2019-03-01', '3 months', 47839, 39000.00),
		('Hammer strength machine','2019-01-01', '3 months', 74199, 27000.00),
		('Adjustable weight bench','2019-01-01', '3 months', 74212, 16000.00);
--drop table Membership
create table Membership(
MemberID	Int not null primary key,
Date_created	Date	 Null,
Expiry_dates	Date	 Null
);
insert into Membership(MemberID,Date_created, Expiry_dates)
values  (1000,'2020-01-01','2025-01-01'),
		(1003,'2020-04-11','2024-04-11'),
		(1001,'2021-02-23','2024-02-23'),
		(1002,'2022-03-07','2025-03-07'),
		(1004,'2022-05-21','2025-05-21'),
		(1005,'2019-09-05','2023-09-05'),
		(1006,'2021-02-01','2024-02-01');

--drop table Membership
--drop table Package

create Table  Package (
packid int not null,
Pack_name	Varchar(50)	 Null,
Pack_duration Varchar(50) Null,
Pack_price	Numeric(8,2) Null,
Pack_Rate_Cust varchar(50) default Null
);

insert into Package(packid, Pack_name, Pack_duration, Pack_price, Pack_Rate_Cust)
values	(1,'Gold','3 months', 25000.00, '5 star'),
		(2,'Premium','1 year', 30000.00,'5 star'),
		(3,'Elite','6 months', 20000.00,'2 star'),
		(4,'Basic','3 months',18000.00,'3 star'),
		(5,'Silver','1 month',12000.00,'3 star'),
		(6,'Bronze','15 days',13000.00,'4 star');

create table existing(
packid int null,
customerId int not null foreign key references Customers(CustomerId),
packdate date null,
TrainerId int not null foreign key references Trainer(TrainerId)
);

insert into existing(packid, customerId, packdate, TrainerId)
values (1, 1001, '2020-01-01', 3001),
		(2, 1002, '2022-03-07', 3002),
		(3, 1003, '2020-04-11', 3003),
		(5, 1004, '2022-05-21', 3001),
		(4, 1005, '2019-09-05', 3004),
		(3, 1006, '2021-02-01', 3000),
		(6, 1002, '2023-03-07', 3001),
		(3, 1005,'2019-12-05', 3000);


create table login(
UserName varchar(40),
Password varchar(20)
)
Insert into login (UserName,Password)
values('ADMIN' , '123456');
select *from login




select * from Manager;
select * from Customers;
select * from Trainer;
select * from Equipments;
select * from Membership;
select * from Package;
select * from Staff;
select * from existing;

-- problem query
SELECT Customer_name, Customers.CustomerId, Cust_join_date, Cust_height, Cust_weight, Cust_pay_amount, Exc_type, ManagerName, Trainer_name, MemberID, Expiry_dates, Pack_name, Pack_duration, Pack_price, Pack_Rate_Cust 
FROM  Customers 
LEFT JOIN Trainer 
ON Customers.Trainerid = Trainer.Trainerid 
LEFT JOIN Manager 
ON Customers.Managerid = Manager.Managerid 
LEFT join Membership 
on Customers.CustomerID = Membership.CustomerID 
LEFT join Package 
on Customers.CustomerID = Package.CustomerID








--Show Manager

SELECT ManagerId, ManagerName
FROM Manager

--Highest Paid

SELECT ManagerId, ManagerName, Salary
FROM Manager
WHERE Salary = (SELECT MAX(Salary)
				FROM Manager)

--Every Manager Info

SELECT *FROM Manager


--Managed Staff

SELECT Manager.ManagerId AS ID, ManagerName, StaffName
FROM Manager
JOIN Staff
On Manager.ManagerID = Staff.ManagerID
ORDER BY ID

--Service

SELECT Manager.ManagerId AS ID, ManagerName, Customer_name
FROM Manager
JOIN Customers
On Manager.ManagerID = Customers.ManagerID
ORDER BY ID
--Managed Trainer


SELECT RES.ID AS ID, ManagerName, Trainer_name
FROM

(SELECT Customers.ManagerId AS ID , Trainer_name
FROM Trainer
JOIN Customers
On Customers.TrainerId = Trainer.TrainerID) AS RES
JOIN Manager
ON Manager.ManagerID = RES.ID
ORDER BY ID

--Show Equipment


SELECT *
FROM Equipments

--Costly Equipments

SELECT Equip_name, Equip_cost
FROM Equipments
WHERE Equip_cost > (SELECT AVG(Equip_cost) FROM Equipments)

--Equipment Number
SELECT COUNT(DISTINCT Equip_name) AS Number
FROM Equipments

--High Maintenance


SELECT Equip_name, Equip_maintenance
FROM Equipments
WHERE Equip_maintenance < '3 months'


--Every Staff Info

SELECT StaffId, StaffName, Staff_work_hour, Staff_join_date, Staff_leave_date, Staff_work_as, Staff_salary, ManagerName
FROM Staff
JOIN Manager
ON Staff.ManagerID = Manager.ManagerID

--2
--Work Hour

SELECT StaffId, StaffName, Staff_work_hour
FROM Staff
ORDER BY Staff_work_hour DESC


--3
--Staff Category

SELECT Staff_work_as, COUNT(StaffId) AS S_num FROM Staff GROUP BY Staff_work_as

--staff Work Duration 


SELECT StaffId, StaffName, Staff_join_date, DATEDIFF(day, Staff_join_date, GETDATE()) AS Working_days
from Staff
order by working_days desc



--new joined staff

select StaffId, StaffName, Staff_join_date
from staff
where DATEDIFF(day, Staff_join_date, GETDATE()) <= 100 

--Show All Customer


SELECT CustomerId, Customer_name 
FROM Customers



--show Customer



SELECT Customer_name, Customers.CustomerId AS ID, Cust_join_date, Cust_height, Cust_weight, Pack_price + 4000 AS Paid, Exc_type, ManagerName, Trainer_name, MemberID, Expiry_dates, Pack_name, Pack_duration, Pack_price, 
		Pack_Rate_Cust 
FROM  Customers 
LEFT JOIN Trainer 
ON Customers.Trainerid = Trainer.Trainerid 
LEFT JOIN Manager 
ON Customers.Managerid = Manager.Managerid 
LEFT join Membership 
on Customers.CustomerID = Membership.MemberID 
LEFT join Package 
on Customers.packid = Package.packid
ORDER BY ID



--Exercise


SELECT Exc_type, COUNT(CustomerId) AS Exc_num FROM Customers GROUP BY Exc_type ORDER BY Exc_num DESC

--Star Customer


SELECT CustomerId, Customer_name
FROM Customers
WHERE CustomerId IN

(SELECT CustomerId
FROM (SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS R
WHERE packId IN 


(SELECT packId
FROM
(SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS T
GROUP BY packId
HAVING COUNT(CustomerId) = 


(SELECT MAX(c_num) AS max_p_num
FROM
(SELECT packId, COUNT(CustomerId) AS c_num
FROM
(SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS RES
GROUP BY packId) AS TEMP)))
--Bronze Customer

SELECT CustomerId, Customer_name
FROM Customers
WHERE CustomerId IN

(SELECT CustomerId
FROM (SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS R
WHERE packId IN 


(SELECT packId
FROM
(SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS T
GROUP BY packId
HAVING COUNT(CustomerId) = 


(SELECT MIN(c_num) AS max_p_num
FROM
(SELECT packId, COUNT(CustomerId) AS c_num
FROM
(SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS RES
GROUP BY packId) AS TEMP)))


--Gym Access


SELECT CustomerId, Customer_name, DATEDIFF(day, GETDATE(), Expiry_dates) AS Remaining_days
FROM

(SELECT *
FROM Customers
JOIN Membership
ON Customers.CustomerId = Membership.MemberId) AS res


--Denied


SELECT CustomerId, Customer_name 
FROM

(SELECT *
FROM Customers
JOIN Membership
ON Customers.CustomerId = Membership.MemberId) AS res
WHERE DATEDIFF(day, GETDATE(), Expiry_dates) <= 0


--8
--Customer Packs

SELECT CustomerId, Customer_name, Pack_name
FROM Customers
JOIN Package
ON Customers.packId = Package.packId

SELECT TEMP.CustomerID AS CusID, Customer_name, Pack_name
FROM Customers
JOIN

(SELECT RES.CustomerId AS CustomerID, Pack_Name
FROM
(SELECT CustomerId, packId
FROM Customers
UNION
SELECT customerid, packid
FROM EXISTING) AS RES
JOIN Package
ON RES.packId = Package.packid) AS TEMP
ON TEMP.CustomerID = Customers.CustomerID



--Show  all trainers


SELECT *
FROM Trainer


--problem query 
--Training

SELECT TrainerId, Trainer_name, Training
FROM
(SELECT TrainerId, COUNT(CustomerId) AS Training
FROM Customers
GROUP BY TrainerId) AS RES
JOIN Trainer
ON Trainer.TrainerId = RES.TrainerId

-- high salary
SELECT TrainerId, Trainer_name, Trainer_salary
FROM Trainer
Where Trainer_salary = (SELECT MAX(Trainer_salary) FROM Trainer)
--4 
--Low Salary

SELECT TrainerId, Trainer_name, Trainer_salary
FROM Trainer
Where Trainer_salary = (SELECT MIN(Trainer_salary) FROM Trainer)


--5 problem showing from home
--Popular Trainer

SELECT TrainerId, Trainer_name, Trainer_rating FROM Trainer Where Trainer_rating = (SELECT MAX(Trainer_rating) FROM Trainer)


--6
--Good Trainer


SELECT TrainerId, Trainer_name, Trainer_rating
FROM Trainer
WHERE Trainer_rating = '3 star' OR Trainer_rating = '4 star' OR Trainer_rating = '5 star' 


--7
--Work Hour

SELECT TrainerId, Trainer_name, Trainer_work_hour FROM Trainer ORDER BY Trainer_work_hour DESC


--8 
--Trained

SELECT Trainer.TrainerID AS ID, Trainer_name, Customer_name FROM (SELECT TrainerId, CustomerId, Customer_name  FROM Customers) AS RES JOIN Trainer ON Trainer.TrainerID = RES.TrainerID ORDER BY ID

