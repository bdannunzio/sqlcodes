select
	loc.country_name
from
	geographic_location as loc
where region like "central and southern asia";

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%Central and Southern Asia%"

union

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%Sub-saharan africa%"

union

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%Europe and northern america%"

union

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%Latin america and the caribbean%"

union

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%northern africa and western Asia%"

union

select
	loc.country_name,
    eco.time_period,
   ifnull(eco.pct_unemployment, 19.59) as pct_unemployment_imputed
    
from
	geographic_location as loc
left join
	economic_indicators as eco
    on eco.Country_name = loc.Country_name
    
where region like "%oceania%";