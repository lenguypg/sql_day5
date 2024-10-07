--ex1
select distinct city from station
where id%2=0;

--ex2
select
count(city) - count(distinct city)
from station;

--ex3 (not yet)

--ex4
select
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal),1) 
as mean
from items_per_order

--ex5
select candidate_id from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id --tai sao group ma khong select distinct?
having count(skill)=3

--ex6
select user_id,
date(max(post_date))-date(min(post_date)) as days_between
from posts
where post_date >='2021-01-01' and post_date<='2022-01-01'
group by user_id
having count(post_id)>=2

--ex7
select card_name,
max(issued_amount)-min(issued_amount) as difference
from monthly_cards_issued
group by card_name
order by difference desc

--ex8
select manufacturer,
count(drug) as drug_count,
abs(sum(cogs-total_sales)) as total_loss
from pharmacy_sales
where total_sales<cogs
group by manufacturer
order by total_loss desc

--ex9
select * from Cinema
where id%2=1 and description<>'boring'
order by rating desc

--ex10
select teacher_id,
count(distinct subject_id) as cnt
from teacher
group by teacher_id

--ex11
select user_id
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id

--ex12
select class
from Courses
group by class
having count(student)>=5
