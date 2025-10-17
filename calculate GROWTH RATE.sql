use united_nations;

select
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    rank() over(partition by Time_period
    order by Pct_managed_drinking_water_services asc) as rank_of_water_services
from
	access_to_basic_services;
    
    
select
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    LAG(Pct_managed_drinking_water_services) over(partition by Country_name order by time_period asc) as prev_year_pct_managed_drinking,
    Pct_managed_drinking_water_services - LAG(Pct_managed_drinking_water_services) over(partition by Country_name order by time_period asc) as growth_rate


from
	access_to_basic_services;
    
