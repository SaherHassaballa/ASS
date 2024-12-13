/*   Question: 
Write a SQL query to retrieve the emp_id, last_name, and salary of employees whose salary is 
between 2,000 and 5,000 and do not have a manager ID of 101 or 200. */


SELECT employee_id, last_name, salary 
FROM employees
WHERE salary BETWEEN 2000 AND 5000 
AND manager_id NOT IN (101, 200);

/*---------------------------------------------------*/

/* Question: 
Write a SQL query to display the employee names along with their respective department names. 
Use aliases for table names for better readability. */

select first_name+ ' ' + last_name as 'full name' , department_name as Dname  from employees , departments
where employees.department_id = departments.department_id order by departments.department_name

/*-----------------------------------------------------------*/

/* Task 3: Aggregate Functions and GROUP BY 
Question: 
Write a SQL query to find the number of employees and the average salary for each department. 
Ensure that the results are grouped by department ID. */

select count(employee_id) , avg(salary) from employees
group by department_id


/*----------------------------------------------------------*/

