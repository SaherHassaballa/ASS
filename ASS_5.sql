select * from employees
/*---------------------------*/
select employees.first_name ,employees.employee_id ,employees.department_id from employees , departments , locations

where employees.department_id = departments.department_id 
and locations.location_id = departments.location_id 
and locations.city = 'Rome'
/*-------------------------------------------*/

select distinct employee_id from employees

/*----------------------------------------------*/

create table students( ID INT IDENTITY(1,1) primary key , 
					   first_name varchar(50) not null ,
					   last_name varchar(50) not null ,
					   adress varchar(50) default 'N/A' ,
					   Birth_date date );

drop table students


/*---------------------------------------------------*/

INSERT INTO students (first_name, last_name , adress)
VALUES ('Ahmed', 'Ali' , 'roma');


update students 
set adress = 'cairo'
where first_name = 'Ahmed'

/*----------------------------------------------------*/
BEGIN TRANSACTION;

Delete from students 
where adress = 'cairo'

ROLLBACK;