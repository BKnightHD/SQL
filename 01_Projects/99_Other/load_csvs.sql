-- ==============================================
-- Script:      
-- Description:	
-- Author:	    Brandon J. Knight
-- Date         
-- ==============================================

USE transportation_report;


-- Load data
LOAD DATA LOCAL INFILE 'C:\Users\BKnight\OneDrive - Bunzl Distribution USA\Documents\02_Sr, Analyst\02_Projects\02_Transportation Report\02_SQL\CSV loads\Arbs-Origins'
INTO TABLE arbs			 
-- Set rules for how MySQL will read your data
FIELDS TERMINATED BY ',' -- Seperate values by comma
LINES TERMINATED BY '\n' -- New line begins after new line
IGNORE 1 ROWS            -- Ignore first row