-- Helper file

show columns from evergreen;

use transportation_report;
drop table msc, `one`, evergreen, wan_hai,sm_line;

select * from evergreen;

-- change column data type
alter table evergreen 
modify column effective_date int,
modify column end_date int;

show columns from evergreen;

-- Invoking date format change on columns in evergreen table
SELECT 
    DATE_FORMAT(DATE_ADD('1899-12-30', INTERVAL effective_date DAY), '%d-%m-%Y') AS effective_date,
    DATE_FORMAT(DATE_ADD('1899-12-30', INTERVAL end_date DAY), '%d-%m-%Y') AS end_date
FROM evergreen;