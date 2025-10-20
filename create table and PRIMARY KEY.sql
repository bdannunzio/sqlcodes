use united_nations;

-- creating new table and implementing primary key --
create table geographic_location (
country_name varchar(37) primary key,
sub_region varchar(25),
region varchar(32),
land_area numeric(10,2)
);


-- primary key needs to be unique, no duplicates, so we need to use GROUP BY --
insert into geographic_location (country_name, sub_region, region, land_area)
select country_name,
	sub_region,
    region,
    avg(land_area)
from access_to_basic_services
group by country_name,
		sub_region,
        region;
        
select * from geographic_location;