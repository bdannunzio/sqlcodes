select *
from access_to_basic_services
where region like '%africa%';

select 
	case
		when country_name in ("angola", "botswana", "comoros", "democratic republic of congo", "eswatini", "lesotho", "madagascar", "malawi",
        "Mauritius", "Mozambique", "Namibia", "Seychelles", "South Africa", "united republic tanzania", "zambia", "zimbabwe")
		then "SADC"
        
        when country_name in ("algeria", "libya", "mauritania", "morocco", "tunisia")
        then "UMA"
        
        Else "Not Classified"
	end as regional_economic_community,
    min(Pct_managed_drinking_water_services) as min_pct_managed_drinking_water_services,
    avg(Pct_managed_drinking_water_services) as avg_pct_managed_drinking_water_services,
    max(Pct_managed_drinking_water_services) as max_pct_managed_drinking_water_services
from access_to_basic_services
where region like '%africa%'
group by
	case
		when country_name in ("angola", "botswana", "comoros", "democratic republic of congo", "eswatini", "lesotho", "madagascar", "malawi",
        "Mauritius", "Mozambique", "Namibia", "Seychelles", "South Africa", "united republic tanzania", "zambia", "zimbabwe")
		then "SADC"
        
        when country_name in ("algeria", "libya", "mauritania", "morocco", "tunisia")
        then "UMA"
        
        Else "Not Classified"
	end;