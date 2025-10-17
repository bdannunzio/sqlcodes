use united_nations;

select
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services,
    rank() over(partition by Time_period
    order by Pct_managed_drinking_water_services asc) as rank_of_water_services
from
	access_to_basic_services;