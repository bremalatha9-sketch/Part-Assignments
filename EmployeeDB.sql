/*Employee Database to store and manage information
related to employees, departments, and locations within the organization*/
/*1. Database and Table Creation (CREATE)*/

--  Departments Table creation

CREATE DATABASE employee; /*created new database named employee*/
USE employee; /*selects databse*/

--  creating three table that is department,locations n employee with data type n relationships


CREATE TABLE Departments(
department_id INT PRIMARY KEY, /*created unique department_id using primary key code*/
department_name varchar(100)  /* stored department name*/
);
CREATE TABLE Location (

location_id INT PRIMARY KEY, /* created unique location_id using primary key code*/
location_name varchar(100) /*stored location name*/
);

CREATE TABLE Employees  (

employee_id INT PRIMARY KEY, /*created unique employee_id using primary key code*/
Employee_name VARCHAR(100),
Gender VARCHAR(10),
Age INT,
Hire_date DATE,
Designation VARCHAR(50),
Salary DECIMAL(20,2),
department_id INT,
location_id INT,
--  Foreign key is used to connect two tables. It refers to the primary key of another table.
FOREIGN KEY(department_id) REFERENCES Departments(department_id),/*department_id is the primary key of department table*/
FOREIGN KEY(location_id) REFERENCES Location(location_id) /*location_id is the primary key of Location table*/
);

--  2. Table Alteration (ALTER)
/* Add a new column named "email" to the Employees table to store
employee email addresses.*/

ALTER TABLE Employees /*ALTER TABLE is used to change a table*/
ADD email VARCHAR(100); /* ADD code is used for to add new column*/

/*Modify the data type of the "designation" column in the Employees table to
support a wider range of values.*/

ALTER TABLE Employees
MODIFY Designation VARCHAR(100); /* MODIFY code is used to change the data type and modified the column*/

/*Drop the “age” column from the Employees table.*/
ALTER TABLE Employees
DROP COLUMN Age; /* DROP is used to remove a column*/

/*Rename the “hire_date” column to “date_of_joining”.*/
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

--  3. Table Renaming (RENAME)

/*Rename the "Departments" table to "Departments_Info".*/

RENAME TABLE Departments TO Departments_Info;

/*Rename the "Location" table to "Locations".*/
ALTER TABLE Location
RENAME TO Locations;

--  4. Table Truncation (TRUNCATE):
/*Truncate the Employees table.*/
TRUNCATE TABLE Employees;

--  5. Database & Table Dropping (DROP):
/* Drop the Employees table and then the “employee” database.*/

DROP TABLE Employees; /*Removes whole Employees table*/

DROP DATABASE employee; /*Removes entire data base*/

--  Tasks: Constraints
/*1. Database Recreation:
Drop the 'employee' database if it exists.*/
/*DROP DATABASE IF EXISTS employee;*/

/*Recreate it using the provided schema, ensuring that all tables are created
with the appropriate constraints as instructed.*/

CREATE DATABASE employee;
USE employee;

--  2. Departments Table:
CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50) NOT NULL UNIQUE /* department_name cannot be null and duplicate*/
);

--  3. Locations Table:
CREATE TABLE Locations (
location_id INT PRIMARY KEY AUTO_INCREMENT,/*Automatically generate location_id*/
location_name VARCHAR(100) NOT NULL UNIQUE
);
--  4. Employees Table:

CREATE TABLE Employees (
employee_id INT  PRIMARY KEY,
employee_name VARCHAR(100) NOT NULL,
gender CHAR(1) CHECK (gender IN("M","F")),/*checks set a condition for a column, choosing gender canbe M or F*/
age INT CHECK(age>=18),/* the age should be 18 or above*/
hire_date DATE DEFAULT (CURRENT_DATE),/*give date automatically if you are not enter date*/
Designation VARCHAR(50),
Salary DECIMAL(10,2),
department_id INT,
location_id INT,
FOREIGN KEY (department_id ) REFERENCES Departments(department_id),
FOREIGN KEY (location_id ) REFERENCES Locations(location_id)
);
















