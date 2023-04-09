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

Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.

Link: https://leetcode.com/problems/nth-highest-salary/description/
*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE P INT;
SET P=N-1;
  RETURN (
      # Write your MySQL query statement below.
     SELECT DISTINCT(salary) FROM Employee 
     ORDER BY salary
     LIMIT P, 1
  );
END
