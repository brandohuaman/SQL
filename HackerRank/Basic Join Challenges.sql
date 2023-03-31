/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created 
by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of
challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the 
maximum number of challenges created, then exclude those students from the result.
Link: https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/
SELECT c.hacker_id, h.name, count(c.challenge_id) AS cnt 
FROM Hackers AS h JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name 
HAVING cnt = (SELECT count(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id 
              ORDER BY count(*) desc limit 1) or
cnt NOT IN (SELECT count(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id 
            HAVING c2.hacker_id <> c.hacker_id)
ORDER BY cnt DESC, c.hacker_id;
