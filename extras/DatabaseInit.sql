drop database up_app;
create database up_app;


create table Students(
				StudentID int primary key, 
				Password not null,
				FirstName varchar(20) not null,
				LastName varchar(20) not null
				);
insert into Students values(1043882, 'auth' ,'Gift','Langa')
insert into Students values(1198990, 'auth' ,'Kwazi','Thusi')
insert into Students values(1122367, 'auth' ,'Wavhudi','Tshithivhe')
insert into Students values(1048980, 'auth' ,'Mokete','k')


create table Buildings(
				BuildingID int primary key,
				BuildingName varchar(100) unique not null,
				BuildingType varchar(20) not null,
	                        Abbreviation varchar(20) unique not null,
				Latitude float not null, 
				Longitude float not null
				);
insert into Buildings values (1, "Bozzoli Sports Pavillion A", "Exam Hall", "Bozzol",-26.186852, 28.030087)
insert into Buildings values (2, "The Sanctuary", "Services", "Sanctu",-26.188083, 28.030806)
insert into Buildings values (3, "Jubilee Hall", "Residence", "Jubs",-26.188180, 28.032607)
insert into Buildings values (4, "The Planetarium", "Services", "Planet",-26.188332, 28.028306)
insert into Buildings values (5, "Mens Residence Hall", "Residence", "Mens R",-26.188965, 28.030470)
insert into Buildings values (6, "International House Hall", "Residence", "Intern",-26.189124, 28.031133)
insert into Buildings values (7, "Old Mutual Sports Hall", "Exam Hall", "Old Mu",-26.189407, 28.029298)
insert into Buildings values (8, "Old Mutual Gym", "Services", "OMG",-26.189459, 28.029169)
insert into Buildings values (9, "John Moffat", "Lecture", "John M",-26.190174, 28.029306)
insert into Buildings values (10, "School of Construction Economics and Management", "Lecture", "Constr",-26.190341, 28.028654)
insert into Buildings values (11, "The Matrix", "Services", "Matrix",-26.189950, 28.030731)
insert into Buildings values (12, "Umthombo Building", "Lecture", "Umthom",-26.190508, 28.030705)
insert into Buildings values (13, "William Cullen Library", "Library", "WCL",-26.190660, 28.029414)
insert into Buildings values (14, "Wartenweiler Library", "Library", "Warten",-26.191003, 28.030768)
insert into Buildings values (15, "Emthonjeni Community Centre", "Services", "Emthon",-26.186852, 28.030087)
insert into Buildings values (16, "Oppenheimer Life Sciences", "Lecture", "OLS",-26.191485, 28.032057)
insert into Buildings values (17, "Oppenheimer Life Sciences Library", "Library", "OLSL",-26.191497, 28.032287)
insert into Buildings values (18, "Humphrey Raikes", "Lecture", "Chemis",-26.191594, 28.031324)
insert into Buildings values (19, "Physics Building", "Lecture", "Physic",-26.191519, 28.031329)
insert into Buildings values (20, "Solomon Mahlangu House", "Lecture", "Senate",-26.192768, 28.030592)
/* join table of the above tables */

create table StudentVenues(
				StudentID int not null,
				BuildingID int not null,

				foreign key (StudentID) references Students(StudentID) ,
				foreign key (BuildingID) references Buildings(BuildingID)
				)

