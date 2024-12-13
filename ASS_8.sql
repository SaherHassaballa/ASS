/*Task 1: Using Date and Time Functions 
Question: 
Write a SQL query to retrieve all employees who were hired within the last 30 days from the 
current date.*/


select e.first_name , h.start_date ,DATEDIFF(day , h.start_date , CONVERT(date,GETDATE()) ) as days_hire
from employees e INNER JOIN
job_history h on h.employee_id = e.employee_id
where DATEDIFF(day , h.start_date , CONVERT(date,GETDATE()) ) <= 30 ;

/*-------------------------------------------------------------------------------*/
CREATE PROCEDURE sp_get_employee_hours
    @emp_id INT
AS
BEGIN
    SELECT 
        e.first_name AS fname,
        e.last_name AS lname,
        SUM(w.hours) AS total_hours
    FROM 
        employees e
    JOIN 
        works_on w ON e.SSN = w.ESSN
    WHERE 
        e.employee_id = @emp_id
    GROUP BY 
        e.first_name, e.last_name;
END;

/*-----------------------------------------------------------*/

CREATE PROCEDURE sp_get_employee_hours
    @emp_id INT
AS
BEGIN
    SELECT 
        e.first_name AS fname,
        e.last_name AS lname,
        SUM(w.hours) AS total_hours
    FROM 
        employees e
    JOIN 
        works_on w ON e.SSN = w.ESSN
    WHERE 
        e.employee_id = @emp_id
    GROUP BY 
        e.first_name, e.last_name;
END;


EXEC sp_get_employee_hours @emp_id = 101;
