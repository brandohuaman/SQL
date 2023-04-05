/*
Table: Employees

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| name        | varchar |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the name of the employee whose ID is employee_id.
 

Table: Salaries

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| employee_id | int     |
| salary      | int     |
+-------------+---------+
employee_id is the primary key for this table.
Each row of this table indicates the salary of the employee whose ID is employee_id.
 

Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.
Link: https://leetcode.com/problems/employees-with-missing-information/description/?envType=study-plan&id=sql-i
*/

--FULL OUTER JOIN no está disponible de manera nativa en MySQL, por lo que se debe utilizar una combinación de LEFT JOIN y RIGHT JOIN para lograr el mismo resultado.
SELECT t.employee_id 
FROM 
    (SELECT * FROM Employees
    LEFT JOIN Salaries USING(employee_id)
    UNION
    SELECT * FROM Employees
    RIGHT JOIN Salaries USING(employee_id)) as t
WHERE t.name is null or t.salary is null
ORDER BY t.employee_id;
