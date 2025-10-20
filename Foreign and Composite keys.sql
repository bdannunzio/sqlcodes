-- creating a composite key and foreign key --
create table basic_services (
	country_name varchar(37),
    time_period integer,
    Pct_managed_drinking_water_services numeric(5,2),
    Pct_managed_sanitation_services numeric(5,2),
    primary key (country_name, time_period),
    foreign key (country_name) references geographic_location (country_name)
    );
    
    
insert into basic_services (country_name, time_period, pct_managed_drinking_water_services, Pct_managed_sanitation_services)
select country_name,
		time_period,
        Pct_managed_drinking_water_services,
        Pct_managed_sanitation_services
	from access_to_basic_services;
    
select * from basic_services;


create table economic_indicators (
	country_name varchar(37),
    time_period integer,
    Est_gdp_in_billions numeric(10,2),
    Est_population_in_millions numeric(11,2),
    Pct_unemployment numeric(5,2),
    primary key (country_name, time_period),
    foreign key (country_name) references geographic_location(country_name)
    );
    
    
    
insert into economic_indicators (country_name, time_period, est_gdp_in_billions, Est_population_in_millions, Pct_unemployment)
select Country_name,
		Time_period,
        Est_gdp_in_billions,
        Est_population_in_millions,
        Pct_unemployment
	from
		access_to_basic_services;
        
select * from economic_indicators;