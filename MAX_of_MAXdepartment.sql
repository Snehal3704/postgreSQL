--If you want to retrieve only the highest salary across all departments (i.e., the maximum salary overall) 
--and display which department has that salary, you can achieve 
--this by using a subquery in PostgreSQL. Here's the query:

SELECT dept, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
