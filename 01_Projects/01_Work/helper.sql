-- ==============================================
-- Script:      Helper File
-- Description: Utility queries for inspecting and 
--              modifying the transportation_report DB
-- Author:      Brandon J. Knight
-- ==============================================

USE transportation_report;

SELECT * FROM transportation_report.arbs;
SELECT * FROM transportation_report.domestic;
SELECT * FROM transportation_report.dray;
SELECT * FROM transportation_report.evergreen;
SELECT * FROM transportation_report.fowarders;
SELECT * FROM transportation_report.msc;
SELECT * FROM transportation_report.`one`;
SELECT * FROM transportation_report.origin_chrgs;
SELECT * FROM transportation_report.sm_line;
SELECT * FROM transportation_report.wan_hai;

-- ----------------------------------------------
-- Inspect Table Structure
-- ----------------------------------------------
SHOW COLUMNS FROM evergreen;

-- ----------------------------------------------
-- Preview Table Data
-- ----------------------------------------------
SELECT * FROM evergreen;

-- ----------------------------------------------
-- Modify Date Columns to Correct Data Type
-- ----------------------------------------------
ALTER TABLE evergreen 
    MODIFY COLUMN effective_date INT,
    MODIFY COLUMN end_date       INT;

-- Confirm column changes
SHOW COLUMNS FROM evergreen;

-- ----------------------------------------------
-- Convert Excel Serial Dates to DD-MM-YYYY
-- ----------------------------------------------
SELECT 
    DATE_FORMAT(DATE_ADD('1899-12-30', INTERVAL effective_date DAY), '%d-%m-%Y') AS effective_date,
    DATE_FORMAT(DATE_ADD('1899-12-30', INTERVAL end_date DAY),       '%d-%m-%Y') AS end_date
FROM evergreen;

-- ----------------------------------------------
-- Drop All Tables
-- ----------------------------------------------
DROP TABLE IF EXISTS msc,
                     `one`,
                     evergreen,
                     wan_hai,
                     sm_line,
                     forwarders,
                     spot,
                     origin_chrgs,
                     arbs,
                     domestic;
                     
                     
