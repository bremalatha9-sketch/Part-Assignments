
--  MySQL Assignment 2 - Querying Data
/* used employee database already created the previous assignmen,Tables,Relationship,constraints already created*/
USE employee;
/*used DML insert code-to add employee detail indepartment_nameto the table*/
INSERT INTO Departments (department_id, department_name) /*inserted Departments details*/
VALUES
 (1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO Locations (location_name)/*inserted Locations details*/
 VALUES
 ('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO Employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) 
VALUES                                                                                  /*inserted Employees details*/
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

--  Clause & Operators:

--  1. DISTINCT VALUES:
SELECT DISTINCT salary FROM Employees ; /*Distinct used to show only unique(no duplicate value)value*/

--  2. ALIAS (AS):
SELECT 
      age AS Employee_Age,       /*AS is used to give a temporary name to a column*/
      salary AS Employee_Salary
FROM Employees;   

-- 3. WHERE clause and opertors
--  show the employees earning more than 50,000 joined before 2016

SELECT * FROM Employees
WHERE salary>50000 AND hire_date < '2016-01-01' ; /* WHERE CLAUSE is used to filter record based on a condition*/
												/* salary should be more than 50000 ,AND-both the condition be true*/
                                                /* employees should have oined the data before 2016-01-01*/
--  Sorting and Grouping Data:
--  1. ORDER BY:
SELECT * FROM Employees             /*order by used to sort the data, department id is sorted defaultly ascending(low to high) order*/
ORDER BY department_id,salary desc; /* then sort the salary descending(high to low) order with in the department id*/

--  2. LIMIT:
--  Display the first 5 employees hired in the year 2018.

SELECT * FROM Employees                            /* select dates between */  
WHERE hire_date BETWEEN '2018-01-01'AND '2018-12-31'
LIMIT 5;                                            /*limit is used to show few rows*/

--  3. AGGREGATE FUNCTIONS:
--  Calculate the sum of all salaries in the Finance department.

SELECT SUM(salary) AS Total_Salary FROM Employees
WHERE department_id=7;   /*add(using aggregate SUM )salaries of all employee in finance department already finance id given*/

--  Find the minimum age among all employees.
SELECT MIN(age)  AS Minimum_Age FROM Employees; /* found minimum age of all employee*/

--  4. GROUP BY:
--  List the maximum salary for each location.

SELECT location_id, MAX(salary)  FROM Employees
GROUP BY location_id; /* groups the location*/

--  Calculate the average salary for each designation containing the word 'Analyst'.

SELECT designation,AVG(salary) AS Average_Salary FROM Employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation; /*groups employee by  the designation*/

-- 5. HAVING:
--  Find departments with less than 3 employees.
SELECT department_id, count(*) FROM Employees
GROUP BY department_id /* groups employees by department_id*/
HAVING COUNT(*)<3;/*having is used here because of aggregate functions used*/


-- Find locations with female employees whose average age is below 30.

 SELECT location_id,AVG(age) AS Average_Age , gender ,location_name FROM Employees
WHERE gender = 'F'
GROUP BY location_id /*group by location*/
Having Average_Age<30;/*having is used here because of aggregate functions used*/

SELECT* FROM Employees;
SELECT* FROM Departments;
SELECT* FROM Locations;
--  Joins:

--  1. INNER JOIN:
SELECT Employees.employee_name,Employees.designation,Departments.department_name
FROM Employees
INNER JOIN Departments                               /*shows matching(employees and department) record only*/
ON Employees.department_id=Departments.department_id;/*ON-connects the two table*/

--  2. LEFT JOIN:
SELECT COUNT(Employees.employee_id) AS Total_employee,Departments.department_id,Departments.department_name /*counted  the number of employee*/
FROM Departments
LEFT JOIN Employees                                  /*keeps all department*/
ON Departments.department_id=Employees.department_id
GROUP BY Departments.department_id,Departments.department_name;/*Groups employee by departments*/

--  3.RIGHT JOIN
SELECT Employees.employee_name,Locations.location_name
FROM Employees
RIGHT JOIN Locations                 /*keep all locations,Showed every location and the employees working there.*/
ON Employees.employee_id=Employees.location_id;

--  4. CROSS JOIN
SELECT Departments.department_name,Locations.location_name
FROM Departments
CROSS JOIN Locations;

--  5. SELF JOIN:
--  Show pairs of employees working in the same department, excluding self-pairs.
SELECT
  e1.employee_name as Employee1,     --  e1 &e2 -two compies of same employee table
  e2.employee_name as Employee2, 
  e1.department_id
FROM
Employees e1
Join Employees e2
ON e1.department_id=e2.department_id --  finds employees in same department
AND e1.employee_id < e2.employee_id; --  avoid self pair and duplicate pairs
                                     --  the table is joins with itself

--  Windows function
--  Write a window function query to rank employees by salary using rank().
SELECT employee_id,salary,
RANK() OVER(ORDER BY salary DESC ) AS Salary_Rank /*RANK() It is a window function used to give a rank to each row based on a specifies orders*/
FROM Employees;                                   /*OVER --look at all the rows and calculate the rank*/

/*Write a window function query to rank employees by salary within each department
using DENSE_RANK()*/

SELECT employee_name,employee_id,salary,
DENSE_RANK() OVER(PARTITION BY department_id ORDER BY salary DESC ) AS Salary_Rank
FROM Employees; 
  /*DENSE_RANK- rank with in each group ,PARTITION divide into groups, separates employees by department and ranks each department separately.*/      
  
  --  Write a window function query, Running total salary by department
 SELECT employee_name,employee_id,department_id,salary,
 SUM(salary) OVER(PARTITION BY department_id ORDER BY salary DESC)AS Running_Total_Salary
 FROM Employees;/*PARTITION BY department_id--separates the employee in department.ORDER BY salary DESC--arrange the salary highest to lowest
                 sum(salary)--calculates the running total of salary*/