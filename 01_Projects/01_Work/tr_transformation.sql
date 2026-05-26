-- Transportation report script

USE transportation_report;

-- setting query timeout to 1 hour
SET GLOBAL net_read_timeout = 360000;
SET GLOBAL net_write_timeout = 360000;
SET GLOBAL wait_timeout = 360000;
SET GLOBAL interactive_timeout = 360000;


-- Append all carrier tables into new table
CREATE TABLE transportation_report AS
SELECT * FROM evergreen
UNION ALL										-- appends regardless of duplicates
SELECT * FROM msc
UNION ALL
SELECT * FROM `one`
UNION ALL
SELECT * FROM sm_line
UNION ALL
SELECT * FROM wan_hai;

-- LEARN BELOW...Stopping point
-- Add the arb columns to transportation_report
ALTER TABLE transportation_report
    ADD COLUMN arb_20ft DECIMAL(7,2) AFTER ocean_freight_base_charge_20ft,
    ADD COLUMN arb_40ft DECIMAL(7,2) AFTER ocean_freight_base_charge_40ft,
    ADD COLUMN arb_40hc DECIMAL(7,2) AFTER ocean_freight_base_charge_40hc;


-- Populate them by matching on origin columns
SET SQL_SAFE_UPDATES = 0;
UPDATE transportation_report tr
INNER JOIN arbs a
    ON  tr.origin_continent = a.origin_continent
    AND tr.origin_country   = a.origin_country
    AND tr.origin_port      = a.origin_port
SET 
    tr.arb_20ft = a.arb_20ft,
    tr.arb_40ft = a.arb_40ft,
    tr.arb_40hc = a.arb_40hc;
SET SQL_SAFE_UPDATES = 1;
