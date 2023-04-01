/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

Link: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/

set @number = 0;
select repeat('* ', @number := @number + 1) from information_schema.tables limit 20;
--'information_schema.tables' es una vista de sistema que proporciona información sobre las tablas en la base de datos
--es usada para generar una secuencia de asteriscos, y no hace uso de ninguna información específica de las tablas en la base de datos. 
