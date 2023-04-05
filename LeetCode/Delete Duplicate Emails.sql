DELETE p1
FROM Person p1
INNER JOIN (
  SELECT email, MIN(id) as id
  FROM Person
  GROUP BY email
) p2
ON p1.email = p2.email
WHERE p2.id < p1.id;
