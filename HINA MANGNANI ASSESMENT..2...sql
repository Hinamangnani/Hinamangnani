create schema worker;

create table employees2
(
worker_id int not null unique,
first_name varchar (25) not null,
last_name varchar (25) not null,
salary int not null,
joining_date varchar (25) not null, -- 2/20/2024 9.00
department varchar (25) not null
);

select * from employees2;

insert into employees2 values (1 ,'Monika' , 'Arora' , 100000 , '2/20/2024 9:00' , 'HR');
insert into employees2 values (2 ,'Niharika' , 'Verma' , 80000 , '6/11/2014 9:00' , 'Admin');
insert into employees2 values (3 ,'Vishal' , 'Singhal' , 300000 , '2/20/2024 9:00', 'HR');
insert into employees2 values (4 ,'Amitabh' , 'Singh' , 500000 , '2/20/2024 9:00' ,'Admin');
insert into employees2 values (5 ,'Vivek' , 'Bhati' , 50000 , '6/11/2014 9:00' , 'Admin');
insert into employees2 values (6 ,'Vipul' , 'Diwan' , 200000 , '6/11/2014 9:00' ,'Account');
insert into employees2 values (7 ,'Satish' , 'Kumar' , 75000 , '1/20/2014 9:00','Account');
insert into employees2 values (8 ,'Geetika' , 'Chauhan' , 90000 , '4/11/2014 9:00','Admin');


select * from employees2;

describe employees2;

drop table employees2;

create table employees2
(
worker_id int not null unique,
first_name varchar (25) not null,
last_name varchar (25) not null,
salary int not null,
joining_date varchar (25) not null, -- 2/20/2024 9.00
department varchar (25) not null
);

select worker_id,first_name,last_name.salary,joining_date,department from employees2;

select * from employees2;

insert into employees2 values (1 ,'Monika' , 'Arora' , 100000 , '2/20/2024 9:00' , 'HR');
insert into employees2 values (2 ,'Niharika' , 'Verma' , 80000 , '6/11/2014 9:00' , 'Admin');
insert into employees2 values (3 ,'Vishal' , 'Singhal' , 300000 , '2/20/2024 9:00', 'HR');
insert into employees2 values (4 ,'Amitabh' , 'Singh' , 500000 , '2/20/2024 9:00' ,'Admin');
insert into employees2 values (5 ,'Vivek' , 'Bhati' , 50000 , '6/11/2014 9:00' , 'Admin');
insert into employees2 values (6 ,'Vipul' , 'Diwan' , 200000 , '6/11/2014 9:00' ,'Account');
insert into employees2 values (7 ,'Satish' , 'Kumar' , 75000 , '1/20/2014 9:00','Account');
insert into employees2 values (8 ,'Geetika' , 'Chauhan' , 90000 , '4/11/2014 9:00','Admin');

update employees2 set first_name = 'Geetika' where worker_id = 8;


select * from employees2;


-- Q1
Select * from employees2 order by (first_name) asc , (department) desc;

-- Q2
select * from employees2 where first_name in ('Vipul', 'Satish');

-- Q3
select * from employees2 where first_name like '%h';

-- Q4
select * from employees2 where salary>=50000 and salary<=50000;

-- Q5
select department,count(*) from employees2 group by department;

-- Q6
select * from employees2 limit 6;

-- Q7
select department from employees2 group by department having count(worker_id)<5;

-- Q8
select department,count(*) as number_people from employees2 group by department;

-- Q9
select department,first_name, max(salary) from employees2 group by department, first_name;


























