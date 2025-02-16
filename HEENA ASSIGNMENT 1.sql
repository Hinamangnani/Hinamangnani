create schema assignment;

create table company
(
companyid int primary key,
company_name varchar(45) not null unique,
street varchar(45) not null,
city  varchar(45) not null,
state varchar(2) not null,
zip varchar(10) not null
);

insert into Company values(1, 'Mahindra', 'Mahindra Towers, Worli', 'Mumbai', 'MH', 400018);
insert into Company values(2, 'Maruti', 'Plot No. 1, Nelson Mandela Road, Vasant Kunj', 'Delhi', 'DL', 110070);
insert into Company values(3, 'Kia', 'Cyber City, Sector 25', 'Gurugram', 'HR', 122018);
insert into Company values(4, 'BMW', 'Global Business Park, MG Road', 'Gurugram', 'HR', 122002);
insert into Company values(5, 'TATA', '24 Homi Mody Street', 'Mumbai', 'MH',  400001);

select * from Company;

-- Q1
Create table contact
(
contact_id int primary key ,
companyid int not null unique,
first_name varchar(45) not null,
last_name varchar(45) not null,
street varchar(45) not null,
city varchar(45) not null,
state varchar(2) not null,
zip varchar(45) not null,
ismain boolean,
email varchar(45) not null unique,
phone varchar(12) not null unique,
foreign key contact(companyid ) references company(companyid)
);

insert into Contact values(1001, 1, 'Aarav', 'Sharma', '1234 Rajpath', 'Delhi', 'DL', '110001', true, 'aarav.sharma@techind.com', '011-555-1234');
insert into Contact values(1002, 2, 'Priya', 'Verma', '5678 MG Road', 'Mumbai', 'MH', '400001', false, 'priya.verma@greenindia.com', '022-555-5678');
insert into Contact values(1003, 3, 'Ravi', 'Kumar', '4321 Park Street', 'Bangalore', 'KA', '560001', true, 'ravi.kumar@techind.com', '080-555-2345');
insert into Contact values(1004, 4, 'Sita', 'Patel', '7890 Palm Avenue', 'Ahmedabad', 'GJ', '380001', false, 'sita.patel@greenindia.com', '079-555-6789');
insert into Contact values(1005, 5, 'Vikram', 'Singh', '1234 Lotus Lane', 'Chennai', 'TN', '600001', true, 'vikram.singh@greenindia.com', '044-555-9876');

update Contact set first_name = 'Dianne' and last_name = "Connor’s" and email = 'dianne.connor@techind.com' where contact_id = 1001;


select * from Contact;


-- Q3
create table ContactEmployee
(
Contactemployee_id int not null unique,
Contact_id int not null unique,
employeeId int primary key,
ContactDate date,
Description varchar(100) not null,
foreign key ContactEmployee(Contact_id) references contact(Contact_id)
);

insert into ContactEmployee values(1, 1001, 101, '2025-02-12', 'Initial meeting to discuss project requirements.');
insert into ContactEmployee value(2, 1002, 102, '2025-02-11', 'Follow-up discussion on project timeline.');
insert into ContactEmployee value(3, 1003, 103, '2025-02-10', 'Finalizing details for project implementation.');
insert into ContactEmployee value(4, 1004, 104, '2025-02-11', 'Weekly progress update and team feedback.');
insert into ContactEmployee value(5, 1005, 105, '2025-02-12', 'Review of budget and resource allocation for project.');


select * from ContactEmployee;

-- Q2
create table Employee
(
Employee_id int primary key,
First_name varchar(45) not null,
Last_name varchar(45) not null,
Salary int not null,
Hire_date date,
JobTitle varchar(25) not null,
Email varchar(45) not null unique,
Phone varchar(12) not null unique
);

insert into Employee value(101, 'Aarav', 'Sharma', 50000, '2023-12-02', 'data science', 'aarav.sharma@techind.com', '011-555-1234');
insert into Employee value(102, 'Priya', 'Verma',30000, '2024-11-11', 'data developer', 'priya.verma@greenindia.com', '022-555-5678');
insert into Employee value(103, 'Ravi', 'Kumar', 80000, '2020-05-12', 'project manager', 'ravi.kumar@techind.com', '080-555-2345');
insert into Employee value(104, 'Sita', 'Patel', 75000, '2021-12-12', 'Software Engineer', 'sita.patel@greenindia.com', '079-555-6789');
insert into Employee value(105, 'Vikram', 'Singh', 40000, '2022-11-14', 'civil engineer', 'vikram.singh@greenindia.com', '044-555-9876');

update Employee set first_name = 'Dianne' and last_name = "Connor’s" and email = 'dianne.connor@techind.com' where Employee_id = 101;


select * from Employee;

-- Q4 In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 
-- update Employee set Phone = '215-555-8800' where Employee_id = 102;

-- Q5  In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” .
-- update Company set company_name = 'Mahindra,Inc' where companyid = 1;

--Q6 In ContactEmployee table, the statement that removes Dianne Connor’s contact
event with Jack Lee (one statement).
HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove.
  -- delete from ContactEmployee where employee_id = (select employee_id from employees where first_name = 'Dianne' and last_name = "Connor's" ) and employee_id = (select employee_id from employees where first_name = 'Jack' and last_name = 'Lee');

  --Q7 Write the SQL SELECT query that displays the names of the employees that
have contacted Toll Brothers (one statement). Run the SQL SELECT query in
MySQL Workbench. Copy the results below as well. 
  -- select e.first_name,e.last_name from contact e join company c on e.company_id = c.company_id where companyName = 'Toll Brothers';

-- Q8 What is the significance of “%” and “_” operators in the LIKE statement?
-- % sign this will match first word of name and _ sign this will show any word of name like between or last word. 

-- Q9 Explain normalization in the context of databases
-- normalization in databases is the process of organizing data to reduce repeated data.

-- Q10 What does a join in MySQL mean? 
-- A join is used to be combine rows like more than 2 or 3 rows baesd on column.

-- Q11 9.What do you understand about DDL, DCL, and DML in MySQL?
-- DDL (DATA DEFINITION LANGUAGE) , DC;(DATA CONTROL LANGUAGE), DML (DATA MANIPULATION LANGUAGE)
-- DDL Commands is used to be manage an database like ddl has commands (CREATE, ALTER & DROP)
-- DCL Commands is used to be control an database like dcl has commands (Grant & Revoke).
-- DML Commands is used to be manipulate an actual database like dml has commands (SELECT, INSERT, UPDATE & DELETE).

-- Q12 What is the role of the MySQL JOIN clause in a query, and what are some common types of joins? 
-- A join is used to be combine rows like more than 2 or 3 rows baesd on column.
-- (INNER JOIN, NATURAL JOIN, LEFT JOIN & RIGHT JOIN)
-- INNER JOIN:- An inner join in SQL is used to retrieve records that have matching values in both tables.
-- NATURAL JOIN:- A Natural join in SQL is a type of join that automatically matches columns between 2 tables based on columns with the same name and compatible data. 
-- LEFT JOIN:- A Left Join in sql is a type of join that if we add any commond first than it will count left join and right join will be only common part.
-- RIGHT JOIN:- A Right join in sql is a type of join which will match only that common part of values.








