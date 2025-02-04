create schema student;

create table student
(
StdId int not null,
StdName varchar (25) not null unique,
Sex varchar (25) not null,
Percentage float,
Class int,
Sec varchar (2),
Stream varchar (25) not null,
DOB varchar (12) -- 3/8/1998, 3/08/1998
);

describe student;

select * from student;

select StdId, StdName, Sex, Percentage, Class, Sec, Stream, DOB from student;

insert into student values (1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '3/8/1998');
insert into student values (1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '11/23/2008');
insert into student values (1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '6/29/2006');
insert into student values (1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '11/5/1997');
insert into student values (1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '14/9/2003');
insert into student values (1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '11/07/2008');
insert into student values (1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '3/8/1998');
insert into student values (1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '11/7/2008');
insert into student values (1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '10/1/1996');
insert into student values (1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '11/23/2008');
insert into student values (1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Commerce', '28/06/1998');
insert into student values (1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '3/8/1998');
insert into student values (1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '11/23/2008');
insert into student values (1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '11/23/2008');

describe student;

select * from student;

drop table student;

create table student
(
StdId int not null unique,
StdName varchar (25) not null unique,
Sex varchar (25) not null,
Percentage float,
Class int,
Sec varchar (2),
Stream varchar (25) not null,
DOB varchar (25) -- 3/8/1998, 3/08/1998
);

describe student;

select * from student;

select StdId, StdName, Sex, Percentage, Class, Sec, Stream, DOB from student;

select * from student;

insert into student values (1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '3/8/1998');
insert into student values (1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '11/23/2008');
insert into student values (1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '6/29/2006');
insert into student values (1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '11/5/1997');
insert into student values (1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '14/9/2003');
insert into student values (1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '11/07/2008');
insert into student values (1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '3/8/1998');
insert into student values (1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '11/7/2008');
insert into student values (1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '10/1/1996');
insert into student values (1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '11/23/2008');
insert into student values (1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Commerce', '28/06/1998');
insert into student values (1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '3/8/1998');
insert into student values (1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '11/23/2008');
insert into student values (1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '11/23/2008');

describe student;

select * from student;

describe student;


-- Q1
select * from student;

-- Q2
select StdName, DOB from student;

-- Q3
select * from student where percentage>=80;

-- Q4
select StdName, Stream, Percentage from student where Percentage>80;

-- Q5
select * from student where Stream = 'Science' and Percentage>75;











