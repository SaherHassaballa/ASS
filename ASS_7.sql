/*Task 1: Creating a Simple View 
Question: 
Create a simple view named vw_employee_details that displays the first name, last name, and 
department name of employees. */

create view vw_employee_details As
select first_name , last_name , department_name from employees e , departments d
where e.department_id = d.department_id

select * from vw_employee_details


/*-------------------------------------------------------------------------*/
/*Task 2: Modifying a View 
Question: 
Modify the existing view vw_work_hrs to only include employees working in department 
number 5.*/

CREATE OR ALTER VIEW vw_work_hrs AS
SELECT first_name, last_name, department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id = 5;

select * from vw_work_hrs

/*---------------------------------------------------------------------*/

/*Task 3: Creating Views with Check Option 
Question: 
Create a view named vw_high_status_suppliers to display all suppliers with a status greater 
than 15, and ensure that any updates or inserts through the view still meet the status condition.*/

CREATE VIEW vw_high_status_suppliers AS
SELECT * 
FROM suppliers 
WHERE status > 15
WITH CHECK OPTION;
