select
	sub_region,
    country_name,
    land_area,
   round(land_area / sum(land_area) over (
		partition by sub_region
	) *100) as pct_sub_region_land_area
from
	access_to_basic_services
where
	time_period = 2020
    and land_area is not null;
    
select
	Sub_region,
    Country_name,
    Time_period,
    Est_population_in_millions
from
	access_to_basic_services
where
	Est_population_in_millions is not null;

select
	Sub_region,
    Country_name,
    Time_period,
    Est_population_in_millions,
    round(avg(Est_population_in_millions) over (
		partition by sub_region order by time_period), 4 ) as running_avg_population
from
	access_to_basic_services
where
	Est_population_in_millions is not null;    