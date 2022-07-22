create database Company
use Company

create table Employee
(
	Id INT PRIMARY KEY IDENTITY,Surname NVARCHAR(35),Name NVARCHAR(30),Age INT,FatherName NVARCHAR(35),PositionId INT FOREIGN KEY REFERENCES Position(Id)
)

create table Position
(
	Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30)
)

create table Branch
(
	Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(50)
)

create table Product
(
	Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30),Sale DECIMAL(18,2)
)
alter table Product
add Purchase DECIMAL(18,2)

create table Sale
(
	Id INT PRIMARY KEY IDENTITY,ProductId INT FOREIGN KEY REFERENCES Product(Id),EmployeeId INT FOREIGN KEY REFERENCES Employee(Id),BarnchId INT FOREIGN KEY REFERENCES Branch(Id),SaleHistory date
)

INSERT INTO Position
VALUES ('Director'),
('CEO'),
('Manager'),
('Designer'),
('Coder'),
('Soldier'),
('Analyst')

INSERT INTO Employee
VALUES	('Nadjafle','Seyfi','21','Meherrem','2'),
('Safarov','Zaman','21','Camal','4'),
('Semedzade','Samid','25','Mü?viq','1'),
('Mammadli','Abbas','19','Fuad','3'),
('Pashayev','Orxan','12','?lham','5'),
('Hikmetov','Sumbule','32','Hikmet','7'),
('Memmedov','Nurlan','51','Esger','6')

INSERT INTO Branch
VALUES ('Istanbul'),
('Izmir'),
('Paris'),
('Baku'),
('Moscow'),
('LA'),
('Canada')

INSERT INTO Product
VALUES ('Cable',30,15),
('Keyboard',90,45),
('Furniture',300,200),
('Car',25000,22000),
('Coin',44,36),
('Telephone',1200,900),
('PC',2100,1900)



INSERT INTO Sale
VALUES (2,5,7,'2006-04-11'),
(4,1,2,'2010-03-22'),
(1,2,6,'2009-02-06'),
(7,7,3,'2018-04-02'),
(5,4,1,'2016-09-09'),
(6,3,4,'2021-08-02'),
(4,6,5,'2010-04-11')


SELECT (e.Name+ ' ' + e.Surname+ ' ' +e.FatherName) as SAA,p.Name as Positon,pr.Name as Product,b.Name as Branch,pr.Sale as 'Sale Price',pr.Purchase as 'Purchase Price'
FROM Employee as e
JOIN Position as p
ON e.PositionId = p.Id
JOIN Sale as s
ON s.EmployeeId = e.Id
JOIN Product as pr
ON s.ProductId = pr.Id
JOIN Branch as b
ON s.BarnchId = b.Id