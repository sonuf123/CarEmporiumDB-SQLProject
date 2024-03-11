---FIND SALESPERSON HOW HAD ZERO SALES

select emp.firstname AS EMPLOYEE_NAME,
  emp.employeeid,
emp.lastname AS EMPLOYEE_LASTNAME,
emp.title AS JOB_ROLE,
emp.startdate,
	   sal.salesId,
	   sal.salesamount,
	   sal.employeeid
	   from employee emp
	   LEFT JOIN  sales sal
	   ON
	   emp.employeeId = sal.employeeId
	   where
	   emp.title = 'Sales Person'
	   AND 
	   sal.salesamount IS NULL;

employee_name|employeeid|employee_lastname|job_role    |startdate              |salesid|salesamount|employeeid|
-------------+----------+-----------------+------------+-----------------------+-------+-----------+----------+
Carla        |       104|Owen             |Sales Person|2022-08-18 15:58:55.000|       |           |          |
Bob          |       103|Smith            |Sales Person|2021-12-02 08:12:53.000|       |           |          |
