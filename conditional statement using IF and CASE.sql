select distinct
	country_name,
    time_period,
    est_population_in_millions,
    Est_gdp_in_billions,
    (Est_gdp_in_billions / est_population_in_millions) * 1000 as gdp_per_capita
from
	access_to_basic_services
where
	Est_gdp_in_billions is not null;
    
select distinct
	country_name,
    time_period,
    est_population_in_millions,
    Est_gdp_in_billions,
    (Est_gdp_in_billions / est_population_in_millions) * 1000 as gdp_per_capita,
    if(time_period < 2017, 1.90, 2.50) as poverty_line
from
	access_to_basic_services
where
	Est_gdp_in_billions is not null;
    
select 
    (Est_gdp_in_billions / est_population_in_millions) * 1000 as gdp_per_capita,
	(Est_gdp_in_billions / est_population_in_millions) * (1000 / 365.25) as gdp_per_capita_per_day,
    if(time_period < 2017, 1.90, 2.50) as poverty_line,
    case
		when((Est_gdp_in_billions / est_population_in_millions) * (1000 / 365.25)) < if (time_period < 2017, 1.90, 2.50)
        then "Low"
        when((Est_gdp_in_billions / est_population_in_millions) * (1000 / 365.25)) > if(Time_period < 2017, 1.90, 2.50)
        then "High"
        else "Medium"
	end as Income_group
from
	access_to_basic_services
where
	Est_gdp_in_billions is not null;	