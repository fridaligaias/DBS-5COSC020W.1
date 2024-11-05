----Tutorial 05 Question 01
--1.1. Write a simple SQL query to display the content of the employees table.
--1.2. Write a simple SQL query to display the content of the departments table.
--1.3. Write a simple SQL query to display the employee number, last name, job code, hire date and department id for each employee.
--1.4. Write a simple SQL query to display the department id and department name for each department.


----Tutorial 05 Question 02
--2.1. Create a query that displays the last name and salary of employees earning more than £45,000.
SELECT last_name, salary
FROM employees
WHERE salary > '45000';

--2.2. Modify this query to display the last name and salary for all employees whose salary is not in the range of £47,000 to £57,000.
SELECT last_name, salary
FROM employees
WHERE salary < '47000' OR salary > '57000';
--2.3. Create a query that displays the last name, hire date and department id of employees called Matos.
SELECT last_name, hire_date, department_id
FROM employees
WHERE last_name = 'Matos';
--2.4. Create a query that displays the last name, hire date and salary of employees hired after 1st January 2016.
SELECT last_name, hire_date, salary
FROM employees
WHERE hire_date > '2016-01-01';

----Tutorial 05 Question 03
--3.1. Create a report to display the last name, job id, and start date for the employees with the last names of Matos and Taylor. 
--Order the query in ascending order by start date.
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name = 'Matos' OR last_name = 'Taylor'
ORDER BY hire_date;
--3.2. Create a query to list the last name, salary and department ids for employees who earn between £37,000
--and £57,000 and are in department 20 or 40. Label the columns Employee, Yearly Salary, and DepId respectively.
SELECT last_name AS "Employee", salary AS "Yearly Salary", department_id AS "DepID"
FROM employees
WHERE (salary BETWEEN '37000' AND '57000') 
AND (department_id = '20' OR '40');
--3.3. Create a query to list the last name, job id, hire date and salary of employees who work in department40 and who earn more 
--than 41000 as well as those who work in the same department and were hired before the 15th February 2016.
SELECT last_name, job_id, hire_date, salary
FROM employees
WHERE (department_id = '40') AND salary > '41000' AND hire_date < '2016-02-15';

----Tutorial 05 Question 04
--4.1. Create a query to display all employee last names in which the third letter of the name is a.
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%'; 
-- the underscores are the placement [0] is no underscore ( anywhere = % %), [1] is _, etc.

--4.2. Create a query to display the last name of all employees who have both an a and an t in their last name.
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND '%t%';
--4.3. Create a query that displays the last name and hire date for all employees who were hired in 2014.
SELECT last_name, hire_date
FROM employees
WHERE hire_date LIKE '2014%';

-----Tutorial 05 Question 05
--5.1 Create a query to display the last name, job id, and salary for all employees whose job id is 902 or 903 and whose salary 
--is not equal to £35000, £41000, or £51000.
SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = '902' OR job_id = '903') AND salary <> '35000' AND salary <> '41000' AND salary <> '51000';
--5.2 Create a query to display the last name, job id, salary, hire date for all employees for which, either their job id is 909 
--or 911 and their salary is less than 45000, or they were hired before 3rd March 2017 and their last names contains the letter 
--‘o’ as the one letter before last.

SELECT last_name,job_id, salary, hire_date
FROM employees 
WHERE ((job_id='909' OR job_id = '911') AND salary < '45000') OR (hire_date<'2017-03-03' AND last_name LIKE 'o_%');
