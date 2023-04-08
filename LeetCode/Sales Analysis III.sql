/*
Table: Product

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |
+--------------+---------+
product_id is the primary key of this table.
Each row of this table indicates the name and the price of each product.
Table: Sales

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |
+-------------+---------+
This table has no primary key, it can have repeated rows.
product_id is a foreign key to the Product table.
Each row of this table contains some information about one sale.
 

Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

Return the result table in any order.
Link: https://leetcode.com/problems/sales-analysis-iii/?envType=study-plan&id=sql-i
*/
SELECT T.product_id, T.product_name FROM Product T
--Using 'NOT IN' we guarantee the query reports products alone and solely sold in the first quarter.
WHERE T.product_id NOT IN (SELECT P.product_id
FROM Product P INNER JOIN Sales S USING(product_id)
WHERE sale_date<'2019-01-01' OR sale_date>='2019-04-01');
