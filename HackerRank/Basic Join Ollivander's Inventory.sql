/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed 
to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed,
and power of the wands that Ron's interested in, sorted in order of descending power. If more than one 
wand has same power, sort the result in order of descending age.
Link:https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/
select w.id, p.age, w.coins_needed, w.power from Wands as w 
join Wands_Property as p
on w.code = p.code
where w.coins_needed = (select min(coins_needed)
                       from Wands w2 inner join Wands_Property p2 
                       on w2.code = p2.code 
                       where p2.is_evil = 0 and p.age = p2.age and w.power = w2.power)
order by w.power desc, p.age desc;
