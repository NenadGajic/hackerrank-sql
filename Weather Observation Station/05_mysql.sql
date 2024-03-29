select city, length(city)
from station
where length(city) in (
    select max(length(city))
    from station
    union
    select min(length(city))
    from station
)
order by length(city) desc, city asc limit 2;
