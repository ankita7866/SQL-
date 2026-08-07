create database Employee;
use Employee;
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
show tables;
Select * from Employee;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
select * from Employee;
CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));
CREATE TABLE Address
(
AddressId INT PRIMARY KEY AUTO_INCREMENT,
EmployeeId INT,
Country VARCHAR(50),
State VARCHAR(50),
City VARCHAR(50
));
INSERT INTO Address(EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');
select * from Employee;
select * from Projects;
select * from Address;
Alter table Employee ADD Location varchar(50);
select * from Employee;
Alter table Employee ADD Serial_no Int first;  
select * from Employee;
Alter table Employee add Title varchar(10) after EmployeeId;
Alter table Employee drop Location;
Alter table Employee drop Serial_no; 
Alter table Employee drop Title;
desc employee;
alter table employee modify fullname varchar(55) unique;
desc employee;
alter table employee change column department dept varchar(40);
desc employee;
alter table employee  rename to EMP;
desc EMP;
truncate table projects;
desc projects;
select * from projects;
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));
create table simple
(
Id int primary key auto_increment,
remarks varchar(20)
);
insert into simple (remarks) values
("Hello"),("Good morng"),('bye');
select * from simple;
insert into simple values
(6,'gudnite');
select * from simple;
insert into simple values
(10,'gn');
select now();
alter table emp add location varchar(20);
update emp set location = "Thane";
use Employee;
update emp set location = "Thane";
select * from emp;
alter table emp add title varchar(4) first;
select * from emp;
update emp set title="MR.";
update emp set title="Mrs." where gender= "Female";
select * from emp;
update emp set salary = 55000 where fullname="Mary Smith";
select * from emp;
delete from emp where EmployeeId= 1010;
select * from emp order by Salary desc;
/* -W G H O -- where--group by--having-- order by*/
select * from emp limit 2 offset 5;
select * from emp where employeeId % 2 = 0;
select * from emp where employeeId % 2 = 0 limit 3,2;
select * from emp where employeeId % 2 = 0 limit 2 offset 1;
select * from emp where salary>50000;
select max(salary) from emp;
select min(salary) from emp;
select avg(salary) from emp;
select * from emp where fullname is null;
select * from emp where fullname is not null;
select dept,count(salary) from emp group by dept;
select title,count(fullname) from emp group by title;
select title,count(*) from emp group by title;
select sum(salary) from emp group by dept;
select truncate(123.45678,3);
select truncate(123.45678,-3);
select truncate(123.45678,0);
select dept,truncate(avg(age),0) from emp group by dept;
use employee;
select distinct age from emp;
show tables;
select distinct gender,dept from emp;
select * from emp where age not in (23,28);
select * from emp where age between 25 and 28;
select * from emp where salary not between 40000 and 50000;
select * from emp where age in (23,28);
select * from emp where employeeId not in(1004,1007,1003,1010);
select * from emp where employeeId in(1004,1007,1003,1010);
select * from emp where fullname like "P%";
select * from emp where fullname like "%y";
select * from emp where fullname like "%i%";
select * from emp where fullname like "_i%";
select * from emp where fullname like "__u%";
select * from emp where fullname like "%n__";
select * from emp where fullname not like "s%";
select * from emp where EmployeeId is null;
select * from projects where EmployeeId is null;
select * from projects where Projectname is NOT null;
select dept,count(*) from emp group by dept having count(*)=2;
select gender,sum(salary) from emp group by gender having sum(salary)>300000;
select * from address;
select city,count(*) from address group by city having count(*)>1;
select * from projects;
select datediff(enddate,startdate) as Duration,count(*) from projects group by Duration having count(*)>=1;
select datediff(enddate,startdate) as Duration,count(*) from projects where employeeid>1004 group by Duration having count(*)>=2;





