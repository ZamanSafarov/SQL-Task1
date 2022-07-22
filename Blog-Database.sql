create database BlogSite

use BlogSite
 

create table Users
(
	Id INT primary key identity,Name NVARCHAR(30),Surname NVARCHAR(35),Email VARCHAR(50) NOT NULL  constraint CK_EM  CHECK(LEN(Email)>=4 and LEN(Email)<=100) 
)

Alter table Users
ADD UNIQUE(Email)


create table Posts
(
	Id INT primary key identity,LikeCount INT, CreatedAt date,Title NVARCHAR(35),PostText NVARCHAR(500) NOT NULL,UserId INT foreign key references Users(Id)
)

insert into Users
values ('Seyfi','Nadjafle','seyfi.nadjafle17@gmail.com'),
('Zaman','Safarov','zaman.safarov44@gmail.com'),
('Ramin','Safarli','ramin.safarli22@gmail.com'),
('Abbas','Mammadli','abbas.mammadlli999@gmail.com'),
('Aqil','Atakishiyev','aqil.atakishiyev01@gmail.com'),
('Sumbule','Hikmetov','sumbule.Hikmetov41@gmail.com'),
('Nurlan','Memmedov','nurlan.memmedov011@gmail.com')

insert into Posts
values (7,'2008-10-29','Team','The way you speak to yourself matters the most.',1),
(21,'2009-10-29','Computer','I love coding.',4),
(74,'2010-10-29','mouse','Make Mouse sensivitiy .',3),
(98,'2011-10-29','Car','That was bad crash.',5),
(75,'2012-10-29','Camera','close ur webcam from FBI EHE.',2),
(44,'2013-10-29','Asus','Best laptop brand in the world',7),
(12,'2014-10-29','Eat','Our new restaurant.',2),
(35,'2015-10-29','Telephone','my new post with my new iphone.',6),
(87,'2016-10-29','keyboard','use blue switch for better sound.',1)

