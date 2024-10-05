--ex1
select distinct city from station
where id%2=0;

--ex2
select
count(city) - count(distinct city)
from station;

--ex3 (not yet)

--ex4
SELECT
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal),1) 
as mean
from items_per_order

--ex5
SELECT candidate_id FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id --tai sao group ma khong select distinct?
HAVING count(skill)=3

