-- SELECT <columnName> FROM <tableName>;

SELECT * FROM employees;

-- SUGGESTED FORMAT --
SELECT * FROM JOBS;

select * from employees;

SeLeCt * FrOm eMploYEES;


SELECT * FROM regions;


SELECT manager_id FROM employees;


SELECT first_name, hire_date FROM employees;

-- Write a querty to retrieve all the information from the phone number, job id, and manager id from employees table

select phone_number, job_id, manager_id from employees;



SELECT * FROM employees
WHERE job_id = 'IT_PROG';









--1. FROM   -> First retrieves the table.
--2. WHERE  -> filters the rows in the table, or tables.
--3. SELECT -> selects the specific column from the table.



-- Write the query to get the department name column for department id = 50 from departments table.

select department_name, department_id from departments
WHERE department_id = 50;


SELECT * FROM EMPLOYEES
WHERE first_name = 'Neena'
AND last_name = 'King'
AND JOB_ID = 'AD_PRES';


-- Write a query and retrieve first_name with Bruce and David;

SELECT * FROM EMPLOYEES
WHERE first_name != 'David';

SELECT * FROM EMPLOYEES
WHERE salary in (17000, 9000, 3100, 2900);

SELECT * FROM EMPLOYEES
WHERE first_name in ('Neena', 'Alexander');


SELECT * FROM EMPLOYEES
WHERE salary <> 17000
or salary <> 9000
or salary <> 3100
or salary <> 2900;


--Write the query to get all columns from the employees' table if the department id is 50 and the job id is “ST_MAN”

SELECT * FROM employees
WHERE department_id = 50
AND job_id = 'ST_MAN';

--Write the query to get all columns from the employees’ table if the department id is 50 or the job id is “ST_MAN”

SELECT * FROM employees
WHERE department_id = 50
OR job_id = 'ST_MAN';

--Write the query to get all columns from the employees’ table if the department id is 70 or the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
OR salary > 5000;


--Write the query to get all columns from the employees’ table if the department id is 70 and the salary is more than 5000

SELECT * FROM employees
WHERE department_id = 70
AND salary > 5000;


--Write the query to find the employees who are not displayed in step 4.

SELECT * FROM employees
WHERE department_id <> 70
or salary <= 5000;

SELECT * FROM employees
WHERE NOT (department_id = 70 AND salary > 5000 );


SELECT * FROM employees
WHERE commission_pct IS NOT null;


SELECT * FROM employees
WHERE salary BETWEEN 7000 AND 10000;

SELECT * FROM employees
WHERE salary > 7000
AND salary < 10000;


SELECT * FROM employees
WHERE hire_date BETWEEN '01-JUL-96' AND '31-JUL-96';



--1. Write the query to get all columns from employees table if salary is between 1000 and 10000

SELECT * FROM employees
WHERE salary BETWEEN 1000 AND 10000;


--2. Write the query to get all columns from employees table if salary is between 6000 and 100000 and hire date is after June 7, 1997

SELECT * FROM employees
WHERE salary BETWEEN 6000 AND 10000
AND hire_date > '07-JUN-97';

SELECT * FROM  EMPLOYEES
WHERE (salary >= 6000 and salary <= 100000)
AND hire_date > '07-JUN-97';



select first_name || ' ' || last_name from employees;


select first_name from employees;



--1. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘gmailAccount’ from employees table

SELECT last_name || '@gmail.com' as gmailAccount from employees;

--2. Write the query to get last name and add them ‘@gmail.com’ as columnName is ‘Gmail Account’ from employees table.

SELECT concat(last_name, '@gmail.com') as "gmail account" from employees
order by last_name desc;


-- Write the query to get all columns from the employee's table for salaries more than 5000 and order the result for hire date in descending order.

SELECT * FROM employees
WHERE salary > 5000
ORDER BY hire_date desc;

SELECT * FROM employees
WHERE first_name LIKE 'A%';


Select * from employees
Where first_name like '%t_p%'
Order by first_name;



-- 1.	Write a query that returns those employees who have  commission less than their salary

SELECT * FROM employees
WHERE commission_pct < salary;

-- 2.	Write a query that returns all employees that have a salary greater than 2500 and also work in department_id no 20

SELECT * FROM employees
WHERE salary > 2500
and DEPARTMENT_ID = 20;

-- 3.	Write a query that returns all employees that are not AD_VP nor SA_REP and have a salary greater than or equal to 2000

SELECT * FROM employees
WHERE job_id NOT IN  ( 'AD_VP', 'SA_REP' )
AND salary >= 2000;

-- 4.	Write a query to retrieve the first names and last names of all employees along with their job IDs, and concatenate them into a job_id column
--      in the format: <first_name> <last_name> works as a <job_id>. Alias this column as "Full Info".

SELECT first_name, last_name, first_name || ' ' || last_name || ' works as a ' || job_id AS "Full Info" FROM employees;

SELECT first_name, last_name, concat(concat(concat(first_name, ' ' ), concat(last_name, ' works as a ')), job_id) as "Full Info" FROM employees;

-- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per month "

SELECT first_name || ' makes $' || salary || ' per month' as "monthly salary" from employees;

-- 6. -- 5.	Write a query prints first name column as salary, and prints every name in a cell as " Steven makes $24000 per year "

SELECT first_name || ' makes $' || (salary * 12)  || ' per year' as "yearly salary" from employees;

select first_name from employees;



------------------------------------------------------
---------------- SINGLE ROW FUNCTIONS ----------------
------------------------------------------------------

SELECT UPPER('hello') from employees;

SELECT UPPER('hello') from dual;

select *  from dual;

SELECT INITCAP('hello my name is NAME') AS sentence from dual;

SELECT LOWER('THIS IS TECHGLOBAL B6') from dual;

select LOWER(job_id) from employees;

select * from employees;

-- Write a query to concats first_name and job id columns from the employees table
-- and returns them as a concat first_name in upper case and job_id in lower case

-- STEVEN ad_pres NOTE : PLEASE USE CONCAT FUNCTION NOT ||

SELECT CONCAT(CONCAT(UPPER(first_name), ' '), lower(job_id)) from employees;

--1. Write the query to get all employees last names in upper case.

SELECT UPPER(last_name) FROM employees;

--2. Write the query to get all employees emails in lower case.

SELECT LOWER(email) FROM employees;

--3. Write the query to get all employees first name in upper case, last names in lower case and emails in only first letter upper case. 

SELECT UPPER(first_name), LOWER(last_name), INITCAP(email) from employees;

--4. Write a query to retrieve the first names and last names of all employees in uppercase, and their job titles in lowercase. 
--   Additionally, alias the columns as "First Name", "Last Name", and "Job Title" respectively.

SELECT UPPER(first_name) AS "First Name", UPPER(last_name) AS "Last Name", LOWER(job_id) AS "Job Title" FROM employees;


--5. Write a query and return each row in this format “steve IS THE NAME and their job is: MANAGER “

select CONCAT(CONCAT(LOWER(first_name), UPPER(' is the name ')), CONCAT('and their job is: ', job_id)) as "concat function" FROM employees;




SELECT LENGTH('hello my name is name') AS length FROM dual;

SELECT LENGTH(first_name) as length from employees;


SELECT first_name, LENGTH(first_name) as length FROM employees
WHERE LENGTH(first_name) = 6;

SELECT SUBSTR('hello', 2) FROM employees;

SELECT SUBSTR('hello', 2, 2) FROM employees;

-- 'hello' 2  e  
-- 'hello' 2, 2  el
-- 'hello' 2, 3  ell

SELECT SUBSTR('hello', 2, 3) FROM employees;

SELECT SUBSTR('Hello my name is', 10) FROM dual;

SELECT SUBSTR('Hello my name is', 10, 5) FROM dual;

SELECT LENGTH(SUBSTR('Hello my name is', 10, 5)) FROM dual;

select instr(LOWER(city), 'a') from locations;

-- 5.  Write the query to get all last names that starting from index number 2 and add 4 more character from employees.

SELECT SUBSTR(last_name, 2, 4) FROM employees;

-- 6.  Write the query to get all last names that starting from index number 4 from employees .

SELECT SUBSTR(last_name, 4) FROM employees;

-- 7.  Write the query to find the city includes ‘a’ character in locations.

SELECT city FROM locations
WHERE INSTR(city, 'a') > 0;

-- 8.  Write the query to return first name and last name combined as lower case with the space and 
--     find the index number of ‘k’ from combined firstname and lastname from employees.

SELECT LOWER(first_name || ' ' || last_name) as "full_name", INSTR(LOWER(first_name || ' ' || last_name), 'k') as "index number" FROM employees;



-- First argument string, second how much length we want, last what we want to add to it.
SELECT LPAD('hello', 10, '$') FROM dual;

SELECT LPAD('hello', 100, '$') FROM dual;

SELECT RPAD('hello', 100, '&') FROM dual;



SELECT LTRIM('hello', 'h') FROM dual;

SELECT RTRIM('hellohhhhhhhhhhh', 'h') FROM dual;

-- TRUND and ROUND

-- ROUND

SELECT ROUND(107.088, 2) FROM dual;

SELECT ROUND(107.088, 3) FROM dual;

SELECT ROUND(107.0887, 3) FROM dual;

SELECT ROUND(107.9) FROM dual;

SELECT ROUND(107.0884, 3) FROM dual;

SELECT ROUND(107.0885, 3) FROM dual;



-- TRUNC

SELECT TRUNC(107.987979789) FROM dual;

SELECT TRUNC(107.987979789, 3) FROM dual;

SELECT TRUNC(107.987979789, 5) FROM dual;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01-JAN-00' AND '31-DEC-00'
AND last_name LIKE 'S%';






------------------------------------------------------
---------------- GROUP ROW FUNCTIONS -----------------
------------------------------------------------------

SELECT MAX(SALARY) FROM EMPLOYEES;

SELECT COUNT(*) FROM EMPLOYEES;

SELECT MAX(SALARY) AS max_sal from employees;

SELECT MIN(SALARY) AS min_sal from employees;

SELECT SUM(SALARY) AS sum_sal from employees;

SELECT AVG(SALARY) as avg_sal from employees;

SELECT COUNT(*) FROM EMPLOYEES;

SELECT COUNT(salary) FROM EMPLOYEES;

SELECT COUNT(commission_pct) AS count FROM employees;

SELECT commission_pct FROM employees;

SELECT SUM(SALARY) / COUNT(*) as computed_avg, avg(salary) as native_avg FROM EMPLOYEES;

SELECT SUM(salary) + AVG(salary) as computed from employees;

SELECT SUM(salary) AS sum, AVG(SALARY) AS avg, MAX(salary) AS max, MIN(salary) AS min, COUNT(*) FROM employees;



-- 1. Write the query to find the count of employees if the employee first name has more than 4 characters.

SELECT COUNT(*) AS employee_count FROM employees
WHERE LENGTH(first_name) > 4;

-- 2. Find the total number of employees whose names start with the letter 'A’.

SELECT COUNT(*) AS employee_acount FROM employees
WHERE first_name LIKE 'A%';

-- 3. Count how many employees have a salary above 5000.

SELECT COUNT(*)  AS employee_count FROM employees
WHERE salary > 5000;


-- 4. Count how many employees have a commission percentage.

SELECT COUNT(*) as employee_count FROM employees
WHERE commission_pct IS NOT NULL;

-- 5. As we consider that given salaries are monthly, Write the query to find the total salary yearly.

select SUM(salary * 12) AS total_yearly_salary FROM EMPLOYEES;

-- 6. Find the total salary of all employees whose salary is between 3000 and 6000.

SELECT SUM(salary) AS total_salary FROM EMPLOYEES
WHERE salary BETWEEN 3000 AND 6000;




-- GROUP BY CLAUSE

-- Find the avg salary of title 'SA_REP'

SELECT AVG(salary) FROM employees
WHERE job_id = 'SA_REP';

-- Find the avg salary of title 'ST_CLERK'

SELECT AVG(salary) FROM employees
WHERE job_id = 'ST_CLERK';

-- Find the avg salary of title 'AD_VP'

SELECT AVG(salary) FROM employees
WHERE job_id = 'AD_VP';




SELECT AVG(salary), job_id FROM employees
GROUP BY job_id;

select count(*) from employees
where job_id = 'FI_ACCOUNT';

SELECT count(*), job_id FROM employees
GROUP BY job_id;

SELECT DISTINCT job_id FROM employees;

SELECT MAX(salary), job_id FROM employees
GROUP BY job_id;

SELECT MIN(salary), job_id FROM employees
GROUP BY job_id;

SELECT department_id, COUNT(*) AS number_of_employees FROM employees
WHERE salary > 2000
GROUP BY department_id
ORDER BY number_of_employees DESC;

-- Get those job_id's where they have only 2 employees

SELECT COUNT(*), job_id FROM employees
GROUP BY job_id
HAVING COUNT(*) = 2;

SELECT COUNT(*), job_id FROM employees
GROUP BY job_id
HAVING COUNT(*) > 10;

-- 1) SELECT job_id
-- 2) FROM employees
-- 3) WHERE
-- 4) GROUP BY job_id
-- 5) HAVING count(*) = 2
-- 6) ORDER BY

-- Write a query to find those department_id they have count more than 3

SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id
HAVING count(*) > 3;

SELECT COUNT(*) as count, department_id, job_id FROM employees
GROUP BY department_id, job_id
HAVING COUNT(*) < 6;


SELECT department_id, COUNT(*) as number_of_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10
ORDER BY number_of_employees DESC;

--This SQL query does the following:
--Groups the employees by their department.
--Counts the number of employees in each department.
--Only includes departments that have more than 10 employees.
--Orders the results by the number of employees in descending order.


-- 1. Find the total number of employees in each department and list only those departments with more than 5 employees.

SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 2. Calculate the average salary for each job title, but only include job titles where the average salary is greater than 6000.

SELECT job_id, AVG(salary) FROM employees
GROUP BY job_id
HAVING AVG(salary) > 6000;

-- 3. Find the highest salary in each department and list only those departments where the highest salary is less than 10000.

SELECT department_id, MAX(salary) from employees
GROUP BY department_id
HAVING MAX(salary) < 10000;

-- 4. For each department, calculate the total salary paid. Only include deparrtments where the total salary is more than 50000, 
--    and order the result by total salary in descending order.

SELECT department_id, SUM(salary) FROM employees
GROUP BY department_id
HAVING SUM(salary)  > 50000
ORDER BY SUM(salary) DESC;

-- 5. Find the total number of employees for each job title and list only those job titles that have more than 3 employees.

SELECT job_id, COUNT(*) FROM employees
GROUP BY job_id
HAVING COUNT(*) > 3;

-- 6. Calculate the sum of the salaries for each department and only display those where the sum is between 20000 and 50000.

SELECT department_id, SUM(salary) FROM employees
GROUP BY department_id
HAVING SUM(salary) BETWEEN 20000 AND 50000;





-- GROUP ROW FUNCTIONS PRACTICES



-- 1. Write a querty to find the departments where the maximum salary is more than 12000.

SELECT department_id, MAX(salary) FROM employees
GROUP BY department_id
HAVING MAX(salary) > 12000;

-- 2. Write a query to find out which job titles have an average salary greater than 5000.

SELECT job_id, AVG(salary) FROM employees
GROUP BY job_id
HAVING AVG(salary) > 5000;


-- 3. Count the number of employees in each department, but only list those departments with more than 5 employees.

SELECT department_id, COUNT(*) FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;

-- 4. Find out which job titles have more than one employee.

SELECT job_id, COUNT(*) FROM employees
GROUP BY job_id
HAVING COUNT(*) > 1;


-- 5. Calculate the average salary for each department and display those departments where the average salary is above 7000.

SELECT department_id, AVG(salary) FROM employees
GROUP BY department_id
HAVING AVG(salary) > 7000;


-- 6. List departments where the lowest salary is more than 2500.

SELECT department_id, MIN(SALARY) FROM employees
GROUP BY department_id
HAVING MIN(salary) > 2500;

-- 7. Find the total salary paid for each job title, but only list those where the total salary is less than 30000.

SELECT job_id, SUM(salary) FROM employees
GROUP BY job_id
HAVING SUM(salary) < 30000;

-- 8. Calculate the total salary budget per year by department, and list departments with a yearly budget over 500000 dollars.

SELECT department_id, SUM(salary) * 12 FROM employees
GROUP BY department_id
HAVING SUM(salary) * 12 > 50000;

-- 9. Find the average salary of each department and list those departments whose average salary is not equal to the minimum salary of that department.

SELECT department_id, AVG(salary), MIN(salary) FROM employees
GROUP BY department_id
HAVING AVG(salary) <> MIN(salary);


-- 10. Find the job titles where the difference between the maximum and minimum salary is greater than 4000.

SELECT job_id, MAX(salary) - MIN(salary) FROM employees
GROUP BY job_id
HAVING MAX(salary) - MIN(salary) > 4000;


-- 11. Query to get manager_id and lowest paid employees for each manager and make sure that manager is not null and lowest salary is higher than 6000 and then order by lowest salaries descending


SELECT manager_id, MIN(salary) FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY MIN(salary) DESC;


SELECT DISTINCT(FIRST_NAME) FROM EMPLOYEES;

SELECT DISTINCT(job_id) FROM employees;

--========================================--
--============== SUBQUERIES ==============--
--========================================--

SELECT * FROM departments;

SELECT * FROM departments
WHERE department_id = 30;

SELECT * FROM departments
WHERE department_id = (SELECT department_id FROM departments WHERE department_id = 30);

SELECT * FROM departments
WHERE department_id < (SELECT department_id FROM departments WHERE department_id = 30);

SELECT * FROM departments
WHERE department_id < (SELECT department_id FROM departments WHERE department_id = 30)
AND department_name = 'Marketing';



SELECT * from DEPARTMENTS
WHERE department_id < 30
and department_name = 'Marketing';



SELECT * FROM ( SELECT * FROM departments);

SELECT * FROM ( SELECT * FROM employees);




SELECT * FROM departments;

-- Write a query and print those employees where their department_id are equal to 'Administration'

SELECT * FROM employees
WHERE department_id = 10;

SELECT * FROM employees
WHERE department_id = ( SELECT department_id FROM departments WHERE department_name = 'Administration');

-- NOTE: So, Administration information is not in the employees table,
-- we are kinda joining these 2 tables using this department_id because we know that
-- department_id is also in departments_table

SELECT * FROM employees
WHERE department_id = (SELECT department_id FROM departments);

SELECT * FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE department_id in(10,20));

SELECT * FROM employees
WHERE department_id IN (SELECT department_id, location_id, department_name FROM departments WHERE department_id in(10,20));




SELECT job_id, first_name, ( SELECT job_id FROM employees) FROM employees;

SELECT job_id, first_name, ( SELECT job_id FROM employees WHERE first_name = 'Ellen') FROM employees;




-- 1. Write a query to get employees first_name and salary who makes more than employee who has employee_id 121 and then order by salary ascending.

SELECT first_name, salary FROM employees
WHERE salary > ( SELECT salary FROM employees WHERE employee_id = 121);

-- 2. Write a query to get employees first_name, department_id who works in same department with employee who has employee_id 150.

SELECT first_name, department_id FROM employees
WHERE department_id = ( SELECT department_id FROM employees WHERE employee_id = 150);

-- 3. Write a query to find second largest salary.

SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees));

-- 4. Write a query to get name of employees who is making second largest salary.

SELECT salary, first_name FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees));

-- 5. Write a query to get number of postal code under same countries from locations table.

SELECT * FROM locations;

SELECT country_id, count(postal_code) FROM locations
GROUP BY country_id;

-- 6. Write a query to get number of postal code under same countries from locations table if their count is more than 1.

SELECT country_id, COUNT(postal_code) FROM locations
GROUP BY country_id
HAVING COUNT(postal_code) > 2;

-- 7. Write a query to get all employees who is making more than average salary and order by salary.

SELECT first_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary;

-- 8. Write a query to get all cities which have same state with Toronto from locations table.

SELECT * FROM locations;

SELECT city FROM locations
WHERE state_province = ( SELECT state_province FROM locations WHERE state_province = 'Ontario');

SELECT city FROM locations
WHERE state_province = ( SELECT state_province FROM locations WHERE city = 'Toronto');

-- 9. Write a query to find the employee who is making second lowest salary.

SELECT salary, first_name FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees
WHERE salary > (SELECT MIN(salary) FROM employees));

select* from employees;




-- 1. Find all employees who earn more than the average salary.

SELECT first_name, salary FROM employees
WHERE salary > ( SELECT AVG(salary) FROM employees);

-- 2. Find the employee names who have the highest salary.

SELECT first_name, salary FROM employees
WHERE salary = ( SELECT MAX(salary) FROM employees);

-- 3. Find the names of departments that have more than 5 employees.

SELECT * FROM departments;

SELECT department_name from departments
WHERE department_id IN ( SELECT department_id FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5);


-- 4. Find the first name and last name of employees whose manager has a manager.

SELECT * FROM employees;

SELECT first_name, last_name FROM employees
WHERE manager_id IN ( SELECT employee_id FROM employees
WHERE manager_id IS NOT NULL);


-- 5. Find all departments where the total salary is above the company's average total salary by department.

SELECT department_id FROM employees
GROUP BY department_id
HAVING SUM(salary) > ( SELECT AVG(salary) FROM employees);


-- 6. List employees who have the same job title as any employee in department 90, but are not themselves in department 90.

SELECT first_name, last_name, job_id FROM employees
WHERE job_id IN ( SELECT job_id FROM employees WHERE department_id = 90);


-- 7. Find the department ID which has the most number of employees.

SELECT department_id FROM employees
GROUP BY department_id
HAVING COUNT(*) = (SELECT MAX(COUNT(*))  FROM employees
GROUP BY department_id);


-- 8. List all employees who have the same manager as the employee with the lowest salary.

SELECT first_name FROM employees
WHERE manager_id = ( SELECT manager_id FROM employees
WHERE salary = ( SELECT MIN(salary) FROM employees));


-- 9. Find all employees whose salary is greater than the salary of all employees in department 10.

SELECT * FROM employees
WHERE salary > ( SELECT salary from employees WHERE department_id = 10);


--========================================--
--================= JOINS ================--
--========================================--


SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees, departments
WHERE employees.department_id = departments.department_id
AND department_name = 'Marketing';

SELECT * FROM employees JOIN departments
ON employees.department_id = departments.department_id;

SELECT * FROM employees e JOIN departments d
ON e.department_id = d.department_id;


-- 1. Write the query to the print country name, country id, and region name for each country.

SELECT * FROM countries;

SELECT * FROM regions;

SELECT c.country_name, c.country_id, r.region_name FROM countries c JOIN regions r
ON c.region_id = r.region_id;

--2. Write the query to print the last name, email, and  job title for each employee.

SELECT * FROM EMPLOYEES;

SELECT * FROM JOBS;

SELECT e.last_name, e.email, j.job_title FROM employees e JOIN jobs j
ON e.job_id = j.job_id;



SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e RIGHT JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e LEFT JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employees e FULL OUTER JOIN departments d
ON e.department_id = d.department_id;


SELECT * FROM employees;

SELECT * FROM job_history;

SELECT * FROM employees e RIGHT JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT * FROM employees e FULL OUTER JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT * FROM employees e INNER JOIN job_history j
ON e.employee_id = j.employee_id;

SELECT e.first_name, j.start_date, j.end_date, e.hire_date
FROM employees e JOIN job_history j
ON e.employee_id = j.employee_id;


SELECT * FROM employees;

select e.first_name as employee, m.first_name as manager
from employees e join employees m
on e.manager_id = m.employee_id;


-- Write a query to print country name, country id and region name for each country


-- Write a query to print last name email and jon title for each employee




--1. Write a query to get count of employees for each manager and order by count of employees.

SELECT m.manager_id, COUNT(*) FROM employees e JOIN employees m
ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL
GROUP BY m.manager_id
ORDER BY COUNT(*);

--2. Find the employees with the salary more than their managers salary (Interview question)

SELECT e.first_name, e.salary, m.salary AS manager_salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;


------HOMEWORK-------
--Write a query to display the first name, last name, and hire date of all employees who were hired between January 1, 2000, and December 31, 2000, and whose last name begins with the letter 'S'.
select first_name, last_name, hire_date  from employees
where hire_date between '01/01/20001' and '12/31/2000' and last_name like 's%';
--Write a query to display the first name, last name, and job title of all employees who work in the Sales or Accounting departments.
select first_name, last_name, job_id from employees
where department_id = 'sales' or department_id = 'accounting';
--	Write a query to display the first name, last name, and salary of all employees who earn more than $10,000 and less than $20,000.
select first_name, last_name, salary from employees
where salary > 10000 and salary < 20000;
--Write a query to display the first name, last name, and hire date of all employees who do not have a manager.
SELECT first_name, last_name, hire_date
FROM employees
WHERE manager_id IS NULL;
--Write a query to display the first name, last name, and job title of all employees who are either Sales Representatives or Sales Managers.
select first_name, last_name, job_id from employees
where job_id = 'sales representative' or 'sales manager';
--Write a query to display the first name, last name, and hire date of all employees who were not hired in the year 2000.
select first_name,last_name, hire_date from employees
where year hire_date <> 2000;
--Write a query to display the first name and last name of all employees, concatenated as "First Last".
select first_name || ' ' || last_name from employees;
--Write a query to display the first name, last name, and salary of all employees, sorted by salary in descending order.
select first_name, last_name, salary from employees
order by (salary) desc;
--Write a query to display the first name, last name, and job title of all employees whose job title contains the word "Manager".
SELECT first_name, last_name, job_id
FROM employees
WHERE job_title = 'Manager';
--Write a query to display the first name, last name, and salary of all employees whose salary is not null.
select first?_name, last_name, salary from employees
where salary is not null;
--Write a query to display the first name, last name, and job title of all employees, with the first name and last name in uppercase letters and the job title in lowercase letters.
select upper(first_name), upper(last_name), lower(job_id) from employees;
--	Write a query to display the first name, last name, and job title of all employees, with the first letter of each word in the job title capitalized.
select first_name, last_name, initcap(job_id) as job_id from employees;
--	Write a query to display the first name, last name, and length of the job title of all employees.
select first_name, last_name, length(job_id) from employees;
--	Write a query to display the first name, last name, and a concatenated string of the first name, last name, and job title of all employees.
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name, ' - ', job_id) AS details
FROM employees;
--	Write a query to display the first name, last name, and the first three characters of the job title of all employees.
SELECT first_name, last_name, substr(job_id, 1, 3)
FROM employees;
--	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the job title of all employees.
SELECT first_name, last_name, INSTR(job_id, 'a')
FROM employees;
--	Write a query to display the first name, last name, and salary of all employees, with the salary rounded to the nearest thousand dollars.
SELECT first_name, last_name, ROUND(salary, -3) AS rounded_salary
FROM employees;
--	Write a query to display the first name, last name, and salary of all employees, with the salary truncated to the nearest thousand dollars.
SELECT first_name, last_name, TRUNCATE(salary, -3) AS truncated_salary
FROM employees;
--	Write a query to display the first name, last name, and the length of the first name of all employees.
select first_name, last_name, length(first_name) from employees;
--	Write a query to display the first name, last name, and a concatenated string of the first name, a comma, and the last name of all employees.
SELECT first_name, last_name, CONCAT(first_name, ', ', last_name)
FROM employees;
--	Write a query to display the first name, last name, and the first three characters of the first name of all employees.
select first_name, last_name, substr(first_name, 3) from employees;
--	Write a query to display the first name, last name, and the position of the first occurrence of the letter "e" in the first name of all employees.
select first_name, last_name, instr(first_name, 'e') from employees;
--	Write a query to display the first name, last name, and the length of the last name of all employees.
select first_name, last_name, length(last_name) from employees;
--	Write a query to display the first name, last name, and the first three characters of the last name of all employees.
select first_name, last_name, substr(last_name, 3) from employees;
--	Write a query to display the first name, last name, and the position of the first occurrence of the letter "a" in the last name of all employees.
select first_name, last_name, instr(last_name, 'a') from employees;




===PROJECT======
--1 Query to display the employee id, employee name (first name and last name) for all employees who earn more than the average salary
SELECT employee_id, first_name || ' ' || last_name AS employee_name FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
--2 Query to display the employee name (first name and last name), employee id, and salary of all employees who report to Payam
SELECT first_name || ' ' || last_name AS employee_name, employee_id, salary FROM employees
WHERE manager_id = 122;
--3 Query to display the department number, name (first name and last name), job_id, and department name for all employees in the Finance department
SELECT e.department_id, e.first_name || ' ' || e.last_name AS employee_name, e.job_id, d.department_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = ‘Finance’;
--4 Query to display all the information of the employees whose salary is within the range of the smallest salary and 2500
SELECT * FROM employees
WHERE salary >= (SELECT MIN(salary) FROM employees) AND salary <= 2500;
--5 Query to find the first name, last name, department, city, and state province for each employee
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;
--6 Query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number, and department name
SELECT e.first_name, e.last_name, e.department_id, d.department_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IN (80, 40);
--7 Query to display the employee name (first name and last name) and hire date for all employees in the same department as Clara. Exclude Clara
SELECT e.first_name, e.last_name, e.hire_date FROM employees e
JOIN employees c ON e.department_id = c.department_id
WHERE c.first_name = ‘Clara’ AND e.employee_id <> c.employee_id;
--8 Query to display the employee number, name (first name and last name), and salary for all employees who
-- earn more than the average salary and who work in a department with any employee with a J in their name
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (SELECT AVG(salary) FROM employees) AND EXISTS
    (SELECT 1 FROM employees WHERE department_id = d.department_id AND first_name LIKE ‘%J%’);
--9 Query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.first_name LIKE ‘%z%‘;
--10 Query to find all departments, including those without employees. Return first name, last name, department ID, and department name:
SELECT e.first_name, e.last_name, d.department_id, d.department_name FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id;
--11 Query to display the employee number, name (first name and last name), and job title for all employees whose salary is smaller than any salary of those employees whose job title is MK_MAN:
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.job_title FROM employees e
WHERE e.salary < ANY (SELECT salary FROM employees WHERE job_title = ‘MK_MAN’);
--12 Query to display the employee number, name (first name and last name), and job title for all employees whose salary is more than any salary of those employees whose job title is PU_MAN. Exclude job title PU_MAN
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.job_title FROM employees e
WHERE e.salary > ANY (SELECT salary FROM employees WHERE job_title = ‘PU_MAN’)
    AND e.job_title <> ‘PU_MAN’;
--13 Query to display the employee number, name (first name and last name), and job title for all employees whose salary is more than any average salary of any department:
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.job_title FROM employees e
WHERE e.salary > ANY (SELECT AVG(salary) FROM employees GROUP BY department_id);
--14 Query to display the department ID and the total salary for those departments which contain at least one employee
SELECT department_id, SUM(salary) AS total_salary FROM employees
GROUP BY department_id
HAVING COUNT(*) > 0;
--15 Query to find the employees who earn less than the employee of ID 182. Return first name, last name, and salary
SELECT first_name, last_name, salary FROM employees
WHERE salary < (SELECT salary FROM employees WHERE employee_id = 182);
--16 Query to find the employees and their managers. Return the first name of the employee and manager
SELECT e.first_name AS employee_name, m.first_name AS manager_name FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
--17 Query to display the department name, city, and state province for each department
SELECT d.department_name, l.city, l.state_province FROM departments d
JOIN locations l ON d.location_id = l.location_id;
--18 Query to identify all the employees who earn more than the average and who work in any of the IT departments
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (SELECT AVG(salary) FROM employees) AND d.department_name LIKE ‘%IT%‘;
--19 Query to find out which employees have or do not have a department. Return first name, last name, department ID, and department name
SELECT e.first_name, e.last_name, d.department_id, d.department_name FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;
--20 Query to find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager
SELECT e.first_name AS employee_name, m.first_name AS manager_name FROM employees e
LEFT JOIN employees m ON e.manager_id =m.employee_id;
--21 Query to display the name (first name and last name) for those employees who get more salary than the employee whose ID is 163
SELECT first_name || ' ' || last_name AS employee_name FROM employees
WHERE salary > (SELECT salary FROM employees WHERE employee_id = 163);
--22 Query to display the name (first name and last name), salary, department id, and job id for those employees who work in the same designation as the employee whose id is 169
SELECT first_name || ' ' || last_name AS employee_name, salary, department_id, job_id FROM employees
WHERE job_id = (SELECT job_id FROM employees WHERE employee_id = 169);
--23 Query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name, and department ID
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id = (SELECT department_id FROM employees WHERE last_name = ‘Taylor’);
--24 Query to find the department name and the full name (first and last name) of the manager
SELECT d.department_name, m.first_name || ' ' || m.last_name AS manager_name FROM departments d
JOIN employees m ON d.manager_id = m.employee_id;
--25 Query to find the employees who earn $12000 or more. Return employee ID, starting date, end date, job ID, and department ID
SELECT employee_id, start_date, end_date, job_id, department_id FROM job_history
WHERE salary >= 12000;
1:14
--26 Query to display the name (first name and last name), salary, and department ID for those employees who earn the smallest amount of salary among all departments
SELECT first_name || ' ' || last_name AS employee_name, salary, department_id FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees GROUP BY department_id);
--27 Query to display all the information of an employee whose salary and reporting person ID are 3000 and 121, respectively
SELECT * FROM employees
WHERE salary = 3000 AND manager_id = 121;
--28 Query to display the employee name (first name and last name), employee ID, and job title for all employees whose department location is Toronto
SELECT e.first_name || ' ' || e.last_name AS employee_name, e.employee_id, e.job_title FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = ‘Toronto’;
--29 Query to display the employee name (first name and last name) and department for all employees for any existence of those employees whose salary is more than 3700
SELECT e.first_name || ' ' || e.last_name AS employee_name, d.department_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE EXISTS (SELECT 1 FROM employees WHERE salary > 3700);
--30 Query to determine who earns more than an employee with the last name ‘Russell’
SELECT e.first_name || ' ' || e.last_name AS employee_name FROM employees e
WHERE e.salary > (SELECT salary FROM employees WHERE last_name = ‘Russell’);
--31 Query to display the names of employees who don’t have a manager
SELECT first_name || ' ' || last_name AS employee_name FROM employees
WHERE manager_id IS NULL;
--32 Query to display the names of the departments and the number of employees in each department
SELECT d.department_name, COUNT(*) AS employee_count FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;
--33 Query to display the last name of employees and the city where they are located
SELECT last_name, city FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;
--34 Query to display the job titles and the average salary of employees for each job title
SELECT job_title, AVG(salary) AS average_salary FROM employees
GROUP BY job_title;
--35 Query to display the employee’s name, department name, and the city of the department
SELECT e.first_name || ' ' || e.last_name AS employee_name, d.department_name, l.city FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;
--36 Query to display the names of employees who do not have a department assigned to them
SELECT first_name || ' ' || last_name AS employee_name FROM employees
WHERE department_id IS NULL;
--37 Query to display the names of all departments and the number of employees in them, even if there are no employees in the department
SELECT d.department_name, COUNT(e.employee_id) AS employee_count FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;
--38 Query to display the names of employees and the department names, but only include employees whose salary is above 10,000
SELECT e.first_name || ' ' || e.last_name AS employee_name, d.department_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > 10000;
--39 Query to display department names and the average salary within each department, but only for departments with an average salary above 7000
SELECT d.department_name, AVG(e.salary) AS average_salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 7000;
--40 Query to display the names of employees who work in the ‘IT’ department
SELECT first_name || ' ' || last_name AS employee_name FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE departments.department_name = ‘IT’;
--41 Query which looks for the names of all employees whose salary is greater than 50% of their department’s total salary bill
SELECT e.first_name || ' ' || e.last_name AS employee_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (0.5 * (SELECT SUM(salary) FROM employees WHERE department_id = d.department_id));
--42 Query to get the details of employees who are managers
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, e.job_title FROM employees e
JOIN employees m ON e.employee_id = m.manager_id;
--43 Query to display the department code and name for all departments located in the city London
SELECT d.department_id, d.department_name FROM departments d
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = ‘London’;
--44 Query to display the first and last name,salary, and department ID for all employees who earn more than the average salary and arrange the list in descending order on salary
SELECT first_name, last_name, salary, department_id FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;
--45 Query to display the first and last name, salary, and department ID for those employees who earn more than the maximum salary of a department with ID 40
SELECT first_name, last_name, salary, department_id FROM employees
WHERE salary > (SELECT MAX(salary) FROM employees WHERE department_id = 40);
--46 Query to display the department name and ID for all departments located in the same location as the department number 30
SELECT d.department_name, d.department_id FROM departments d
JOIN locations l ON d.location_id = l.location_id
WHERE l.location_id = (SELECT location_id FROM departments WHERE department_id = 30);
--47 Query to display the details of departments managed by Susan
SELECT d.department_id, d.department_name, e.first_name || ' ' || e.last_name AS manager_name FROM departments d
JOIN employees e ON d.manager_id = e.employee_id
WHERE e.first_name = ‘Susan’;
--48 Query to display the department names and location cities. Only include departments that are located in a country with the country_id ‘US’
SELECT d.department_name, l.city FROM departments d
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id = ‘US’;
--49 Query to display the first name and last name of employees along with the name of the department they work in. Only include employees whose last name starts with the letter ‘S’
SELECT e.first_name, e.last_name, d.department_name FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.last_name LIKE ‘S%’;
--50 Query to display the department names and the number of employees in each department. Only include departments with more than 2 employees and order the result by the number of employees in descending order
SELECT d.department_name, COUNT(e.employee_id) AS employee_count FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 2
ORDER BY COUNT(e.employee_id) DESC;



