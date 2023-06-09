/*
Table: Employee
+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.
Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.
Link: https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan&id=sql-i
*/
SELECT 
    (SELECT MAX(salary) FROM Employee WHERE salary < (SELECT MAX(salary) FROM Employee)) 
    AS SecondHighestSalary;


