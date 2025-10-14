use united_nations;
-- SELECT all colums in the database
select
	*
FROM
	Access_to_basic_services;
    
    -- SELECT all columns and LIMIT to 10 rows
    select
		*
	FROM
		access_to_basic_services
	LIMIT 10;
    
    -- select Distinct column
    SELECT DISTINCT
		Country_name
	FROM
		access_to_basic_services;
        
	-- SAVING the query into a table
    create table
		Country_List(
			Country_name varchar(225)
		);
	INSERT INTO Country_List(
		Country_name
	)
    SELECT distinct
		Country_name
	FROM
		Access_to_basic_services;
	
-- Check for country that has the lowest pct of people with access to managed drinking water services
select 
	Country_name,
    Time_period,
    Pct_managed_drinking_water_services AS pct_access_water
FROM
	access_to_basic_services
WHERE
	time_period = 2020;