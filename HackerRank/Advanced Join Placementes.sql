/*
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: 
ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).
Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by 
the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.
Link: https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/

SELECT Name FROM Students s
INNER JOIN Friends f
ON s.ID=f.ID
INNER JOIN Packages p
ON p.ID= f.Friend_ID
WHERE p.Salary > (SELECT Salary 
        FROM Students AS s2 INNER JOIN Packages AS p2 ON s2.ID=p2.ID
        WHERE s.ID=s2.ID)
ORDER BY Salary; 
