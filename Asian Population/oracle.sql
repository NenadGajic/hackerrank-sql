select sum(city.population)
from city, country
where country.continent = 'Asia'
and city.countrycode = country.code;
