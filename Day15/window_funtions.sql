create database functions;
use functions;

CREATE TABLE employees_functions(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(20),
    salary INT,
    joining_year INT
);

INSERT INTO employees_functions VALUES
(101,'Arun','HR',45000,2020),
(102,'Bhanu','IT',70000,2019),
(103,'Charan','Finance',60000,2021),
(104,'Deepa','IT',75000,2018),
(105,'Esha','HR',50000,2022),
(106,'Farhan','Finance',65000,2020),
(107,'Gopal','IT',80000,2017),
(108,'Harsha','Marketing',55000,2021),
(109,'Indu','Marketing',52000,2022),
(110,'Jaya','HR',48000,2019),
(111,'Kiran','Finance',70000,2018),
(112,'Latha','IT',72000,2021),
(113,'Manoj','Marketing',58000,2020),
(114,'Nisha','HR',53000,2023),
(115,'Omkar','Finance',68000,2019);

select *from employees_functions;

-- ROW_NUMBER()
SELECT emp_id, emp_name, department, salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees_functions;

-- RANK()
SELECT emp_name, salary,
RANK() OVER (ORDER BY salary DESC) AS emp_rank
FROM employees_functions;


-- DENSE_RANK()
SELECT emp_name, salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
FROM employees_functions;

-- PARTITION BY
SELECT emp_name, department, salary,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees_functions;

-- LAG()
SELECT emp_name, salary,
LAG(salary) OVER (ORDER BY salary) AS previous_salary
FROM employees_functions;

-- Lead()
SELECT emp_name, salary,
LEAD(salary) OVER (ORDER BY salary) AS next_salary
FROM employees_functions;

-- SUM() OVER()
SELECT emp_name, salary,
SUM(salary) OVER (ORDER BY emp_id) AS running_total
FROM employees_functions;

-- Average Salary by Department
SELECT emp_name, department, salary,
AVG(salary) OVER (PARTITION BY department) AS avg_dept_salary
FROM employees_functions;

select emp_id from employees_functions order by salary desc limit 1;

select * ,first_value(emp_id) over (order by salary desc) as highest_total_charges from employees_functions 


