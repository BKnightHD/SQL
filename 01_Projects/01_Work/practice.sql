SHOW COLUMNS FROM transportation_report;


-- Append all carrier tables into new table
CREATE TABLE transportation_report AS
SELECT * FROM evergreen
UNION ALL										
SELECT * FROM msc
UNION ALL
SELECT * FROM `one`
UNION ALL
SELECT * FROM sm_line
UNION ALL
SELECT * FROM wan_hai;


-- Select multiple columns from a table that returns rows where null values are present
SELECT ocean_freight_base_charge_20ft, 
	   ocean_freight_base_charge_40ft, 
       ocean_freight_base_charge_40hc
FROM transportation_report
WHERE ocean_freight_base_charge_20ft  IS NULL
	OR ocean_freight_base_charge_40ft IS NULL
    OR ocean_freight_base_charge_40hc IS NULL;