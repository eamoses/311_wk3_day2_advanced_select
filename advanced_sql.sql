select * from usersAddress;

select 
	sum(user_id) as totals, 
	state
from usersAddress
group by state
order by totals;

select 
	sum(user_id) as totals, 
	zip
from usersAddress
group by zip
order by total;

SELECT SUM(user_id)
FROM usersAddress 
where state = 'WY';

SELECT SUM(user_id)
FROM usersAddress
where state = 'AK';

SELECT SUM(user_id)
FROM usersAddress 
where state = 'CT';

SELECT SUM(user_id)
FROM usersAddress 
where state = 'TX';

select * from usersContact;

select 
	substr(phone1, 1, 3) as area_code,
    count(substr(phone1, 1, 3)) as area_count
from usersContact
group by area_code
order by area_count desc;

-- MIN, COUNT, JOIN, GROUP BY, HAVING
-- first_name
select * from users;
-- county
select * from usersAddress;

select 
	first_name,
    county
from users u
join usersAddress ua
where u.id = ua.id;

select
	county,
    count(county) as county_count
from usersAddress
group by county
having county_count > 10;

select
	min(first_name),
	county,
    count(county) as county_count
from users
join usersAddress
on usersAddress.id = users.id
group by county
having county_count > 10;