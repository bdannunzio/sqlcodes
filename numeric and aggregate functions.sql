use united_nations;

select
	count(*) as number_of_entry,
    min(Time_period) as min_time_period,
    max(Time_period) as max_Time_period,
    avg(Pct_managed_drinking_water_services) as pct_access_water_services,
    count(distinct Country_name) as country_name
from
	access_to_basic_services;
    
select
	region,
    Sub_region,
    min(Pct_managed_drinking_water_services) as min_pct_managed_drinking_water_services,
    max(Pct_managed_drinking_water_services) as max_pct_managed_drinking_water_services,
    avg(Pct_managed_drinking_water_services) as avg_pct_managed_drinking_water_services,
    count(distinct country_name) as number_of_countries,
    sum(est_gdp_in_billions) as gdp_in_billions
from
	access_to_basic_services
where
	time_period = 2020
    and Pct_managed_drinking_water_services < 60
group by
	region,
    Sub_region
having
	count(distinct Country_name) < 4
order by
	gdp_in_billions asc
;

