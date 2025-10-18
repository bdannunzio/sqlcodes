select
	region,
    pct_unemployment,
    if((region = "Central and southern asia") and (pct_unemployment is null), 19.59, -999) as new_pct_unemployment
from
	access_to_basic_services;
    
select
	region,
    pct_unemployment,
    if((region = "Central and southern asia") and (pct_unemployment is null), 19.59, 
    if(
		(region = "eastern and south-eastern asia") and (pct_unemployment is null), 22.64,
        -999)
        ) as new_pct_unemployment
from
	access_to_basic_services;
    
select
	region,
    pct_unemployment,
    if((region = "Central and southern asia") and (pct_unemployment is null), 19.59, 
		if( (region = "eastern and south-eastern asia") and (pct_unemployment is null), 22.64,
			if( (region = "europe and northern america") and (pct_unemployment is null), 24.43,
				if( (region = "Latin america and the caribbean") and (pct_unemployment is null), 24.23,
					if( (region = "northern africa and western asia") and (pct_unemployment is null), 17.84,
						if( (region = "Oceania") and (pct_unemployment is null), 4.98,
							if( (region = "sub-saharan africa") and (pct_unemployment is null), 33.65,
                            pct_unemployment)
                            )
						)
					)
				)
			)
        ) as new_pct_unemployment
from
	access_to_basic_services;