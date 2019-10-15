-- Solution with 2 queries

-- 1st query
select name || '(' || substr(occupation, 1, 1) || ')'
from occupations
order by name asc;

-- 2nd query
select 'There are a total of ' || count(occupation) || ' ' || lower(occupation) || 's.' as total
from occupations
group by occupation
order by total;
