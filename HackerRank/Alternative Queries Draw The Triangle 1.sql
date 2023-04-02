/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
Link: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/
set @number = 21;
select repeat('* ', @number := @number - 1) from information_schema.tables limit 20;
