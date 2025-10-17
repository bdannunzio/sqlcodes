select
	distinct country_name,
    length(Country_name) as string_length,
    position('(' in country_name) as position_opening_bracket,
    rtrim(left(country_name, position('(' in country_name)-1)) as new_country_name,
    length(rtrim(left(country_name, position('(' in country_name)-1))) as new_country_name_length
from
	access_to_basic_services
where
	Country_name like '%(%)%';
    
select
	distinct country_name,
    Time_period,
    Est_population_in_millions,
    concat(
    Country_name,
    Time_period,
    Est_population_in_millions
    ) as country_id
from
	access_to_basic_services;
    
select
	distinct country_name,
    Time_period,
    Est_population_in_millions,
    concat(
    ifnull(Country_name,'UNKNOWN'),
    ifnull(Time_period, 'UNKNOWN'),
    ifnull(Est_population_in_millions, 'UNKNOWN')
    ) as country_id
from
	access_to_basic_services;
    
    
select
	distinct country_name,
    Time_period,
    Est_population_in_millions,
    concat(
    upper(ifnull(Country_name,'UNKNOWN')),
    ifnull(Time_period, 'UNKNOWN'),
    ifnull(Est_population_in_millions, 'UNKNOWN')
    ) as country_id
from
	access_to_basic_services;
    
    select
	distinct country_name,
    Time_period,
    Est_population_in_millions,
    concat(
    substring(upper(ifnull(Country_name,'UNKNOWN')),1,4),
    substring(ifnull(Time_period, 'UNKNOWN'),1,4),
    substring(ifnull(Est_population_in_millions, 'UNKNOWN'),-7)
    ) as country_id
from
	access_to_basic_services;