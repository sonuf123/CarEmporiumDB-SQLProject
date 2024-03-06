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
