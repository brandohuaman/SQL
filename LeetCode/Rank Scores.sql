/*
Table: Scores

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| score       | decimal |
+-------------+---------+
id is the primary key for this table.
Each row of this table contains the score of a game. Score is a floating point value with two decimal places.
 

Write an SQL query to rank the scores. The ranking should be calculated according to the following rules:

The scores should be ranked from the highest to the lowest.
If there is a tie between two scores, both should have the same ranking.
After a tie, the next ranking number should be the next consecutive integer value. In other words, there should be no holes between ranks.
Return the result table ordered by score in descending order.
Link:
*/
Solution 1:
SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores;

Solution 2:
SELECT score, (SELECT COUNT(DISTINCT score) FROM Scores WHERE score>=s.score) 'Rank'
FROM Scores s
ORDER BY score DESC;

Solution 3:
SELECT 
score,
      @rank:=@rank + (@previo<>(@previo :=score)) 'Rank'
FROM 
  Scores,
  (SELECT @rank:=0, @previo:=-1) init
ORDER BY score DESC;
