use united_nations;

SELECT
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services,
    est_population_in_millions,
    est_gdp_in_billions
from
	access_to_basic_services
where
	( Country_name = "Nigeria"
    or country_name = "Ethiopia"
    or country_name = "Congo"
    or country_name = "Egypt"
    or country_name = "Tanzania"
    or country_name = "Kenya"
    or country_name = "South Africa" )
    and time_period between 2019 and 2020;
    
SELECT
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services,
    est_population_in_millions,
    est_gdp_in_billions
from
	access_to_basic_services
where
	time_period = 2020
    and pct_managed_sanitation_services <= 50
    and pct_managed_drinking_water_services <= 50;

SELECT
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services,
    est_population_in_millions,
    est_gdp_in_billions,
    region
from
	access_to_basic_services
where
	region = "sub-saharan Africa"
and
	time_period = 2020
and 
	est_gdp_in_billions is null;
    
    
SELECT
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services,
    est_population_in_millions,
    est_gdp_in_billions,
    region
from
	access_to_basic_services
where
	region = "sub-saharan Africa"
and
	time_period = 2020
and 
	est_gdp_in_billions is not null
and 
	country_name in ('Nigeria','South Africa', 'Ethiopia', 'Kenya', 'Ghana');
    
SELECT
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services,
    est_population_in_millions,
    est_gdp_in_billions,
    region
from
	access_to_basic_services
where
	region = "sub-saharan Africa"
and
	time_period = 2020
and 
	est_gdp_in_billions is not null
and 
	country_name not in ('Nigeria','South Africa', 'Ethiopia', 'Kenya', 'Ghana');
    
select
	country_name,
    time_period,
    pct_managed_drinking_water_services,
    pct_managed_sanitation_services
from
	access_to_basic_services
where
	country_name like "Iran%"
    or country_name like "%_Republic of Korea"