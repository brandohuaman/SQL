/*
Table: Employee

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |
+--------------+---------+
id is the primary key column for this table.
departmentId is a foreign key of the ID from the Department table.
Each row of this table indicates the ID, name, and salary of an employee. It also contains the ID of their department.
 

Table: Department

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table. It is guaranteed that department name is not NULL.
Each row of this table indicates the ID of a department and its name.
 

Write an SQL query to find employees who have the highest salary in each of the departments.

Return the result table in any order.
Link:https://leetcode.com/problems/department-highest-salary/description/
*/
SELECT d.name as Department, e.name as Employee, salary as Salary
FROM Employee e INNER JOIN Department d ON e.departmentId = d.id
WHERE e.salary=(SELECT MAX(salary) FROM Employee e2 WHERE e2.departmentId=d.id);     
