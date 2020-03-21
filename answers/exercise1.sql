use postal;
show tables;
# unique state names

select distinct state
from zipcodes;

# all countries by state on separate lines
select distinct county, state 
from zipcodes 
order by state;

# all the Counties by state, as a concatenated string
select concat(county, ':' , state) 
from zipcodes;

# number of Counties by state
select state, count(county) 
from zipcodes 
group by state  
order by state;

# all of individual timezones

select distinct timezone
from zipcodes
order by timezone;

# return zipcode, city, state, and county of all of the FALSE or NULL timezones

SELECT zip, city, state, county, timezone
FROM zipcodes
WHERE timezone = 'FALSE'
OR timezone IS NULL;
