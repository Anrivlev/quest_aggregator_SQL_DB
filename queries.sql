select u.user_id, u.first_name, u.last_name, count(uc.quest_id)
from users as u join user_comments as uc
on u.user_id = uc.user_id 
group by u.user_id
order by count(uc.quest_id) desc;

select c.category_id, c.name, avg(uc.score)
from (categories c join quest_categories qc 
on c.category_id = qc.category_id) join user_comments uc
on qc.quest_id = uc.quest_id 
group by c.category_id 
order by avg(uc.score) desc;

select q.quest_id, q."name", t.quest_date, t.quest_time, o.subway_station, o.office_id, o.address, o.has_parking 
from quests q
join offices o on q.office_id = o.office_id
join timetable t on q.quest_id = t.quest_id
where t.quest_date = '2021.12.23' and
o.has_parking = true and
o.subway_station = 'Kantemirovskaya' and
t.is_booked  = false;

select distinct o.office_id, q.quest_id, q."name", t.price, t.is_booked
from quests q
join offices o on q.office_id = o.office_id 
join timetable t on t.quest_id = q.quest_id
where t.is_booked = true and
(o.office_id, t.price) in (
select o.office_id, max(t2.price)
from quests q
join offices o on q.office_id = o.office_id 
join timetable t2 on t2.quest_id = q.quest_id
where t2.is_booked = true
group by o.office_id 
);

create or replace view quests_with_rating as
select q.quest_id, q."name", avg(uc.score) as average
from quests q
join user_comments uc on q.quest_id = uc.quest_id
group by q.quest_id
union
select q.quest_id, q."name", 0 as average
from quests q
where q.quest_id not in (
select q.quest_id
from quests q
join user_comments uc on q.quest_id = uc.quest_id
)
order by average desc;