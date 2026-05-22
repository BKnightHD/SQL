-- ==============================================
-- Script:      Practice Query
-- Description: Drills for internalizing core SQL
--              concepts 
-- Author:      Brandon J. Knight
-- ==============================================

USE transportation_report;

-- ----------------------------------------------
-- 1. Inspect table structure
-- ----------------------------------------------


-- ----------------------------------------------
-- 2. Append all carrier tables into a new table
--    using UNION ALL to stack rows regardless 
--    of duplicates
-- ----------------------------------------------


-- ----------------------------------------------
-- 3. Select freight base charge columns and 
--    return only rows where any of the three
--    container sizes have a null value
-- ----------------------------------------------


-- ----------------------------------------------
-- 4. Add arb charge columns to existing table
--    positioned after their respective freight
--    base charge columns
-- ----------------------------------------------


-- ----------------------------------------------
-- 5. Populate arb columns by matching on the 
--    three shared origin columns via LEFT JOIN
-- ----------------------------------------------


-- ----------------------------------------------
-- 6. Convert excel serial dates to DD-MM-YYYY
--    format on effective_date and end_date
-- ----------------------------------------------

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