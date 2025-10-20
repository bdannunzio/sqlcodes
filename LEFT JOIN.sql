select *
from geographic_location as geo

left join
	economic_indicators as econ
    on geo.country_name = econ.country_name
left join
	basic_services as svc
    on geo.Country_name = svc.Country_name
    and econ.Time_period = svc.Time_period;
    
