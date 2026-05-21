-- ==============================================
-- Script:      Table Creation Script
-- Description:	Creates empty tables for csv data to be loaded in to
-- Author:	    Brandon J. Knight
-- Date         5-21-2026
-- ==============================================

USE transportation_report;

-- 1. Create carrier table strcuture
CREATE TABLE carrier_table_schema (
	effective_date 						DATE,
    end_date 							DATE,
    carrier_type 						VARCHAR(4), 								
	carrier_forwarder_name              VARCHAR(10),						
	origin_continent                    VARCHAR(15),
	origin_country 					    VARCHAR(15),
	origin_port 				        VARCHAR(15),
	destination_port_of_discharge_coast VARCHAR(15),
	destination_port_of_discharge       VARCHAR(20),
	move_ipi_ripi_cy 					VARCHAR(5),
	destination_cy_location 			VARCHAR(20),
	`20'_ocean_freight_base_charge` 	DECIMAL,
	`20'_pss` 							DECIMAL,
	`20'_emergency_fuel_surcharge` 		DECIMAL,
	`20'_isps_charge` 					DECIMAL,
	`20'_security_charge` 				DECIMAL,
	`20'_war_risk`     				    DECIMAL,
	`20'_epc_charge`                    DECIMAL,
	`20'_ets` 							DECIMAL,
	`20'_admin_charge` 				    DECIMAL,
	`20'_bunker` 						DECIMAL,
	`20'_low_sulfur` 					DECIMAL,
	`20'_cuc` 							DECIMAL,
	`20'_gri` 							DECIMAL,
	`20'_erc` 					        DECIMAL,
	`20'_emergency_intermodel` 			DECIMAL,
	`20'_alameda_corridor` 				DECIMAL,
	`20'_suez_canal` 					DECIMAL,
	`20'_panama_canal1` 				DECIMAL,
	`20'_labor_surcharge` 				DECIMAL,
	`20'_additional_charge_1` 			DECIMAL,
	`20'_additional_charge_2` 			DECIMAL,
	`40'_ocean_freight_base_charge`    	DECIMAL,
	`40'_pss`   						DECIMAL,
	`40'_emergency_fuel_surcharge` 	    DECIMAL,
	`40'_isps_charge` 	 		 		DECIMAL,
	`40'_security_charge`  			 	DECIMAL,
	`40'_war_risk` 	 	 		  	  	DECIMAL,
	`40'_epc_charge` 	 	 		  	DECIMAL,
	`40'_ets` 							DECIMAL,
	`40'_admin_charge` 	 	 	 	 	DECIMAL,
	`40'_bunker` 	 			 		DECIMAL,
	`40'_low_sulfur` 	 		 	 	DECIMAL,
	`40'_cuc` 	 	 		 		 	DECIMAL,
	`40'_gri` 	 		 	 		 	DECIMAL,
	`40'_erc` 							DECIMAL,
	`40'_emergency_intermodel` 			DECIMAL,
	`40'_alameda_corridor` 				DECIMAL,
	`40'_suez_canal` 					DECIMAL,
	`40'_panama_canal` 					DECIMAL,
	`40'_labor_surcharge` 				DECIMAL,
	`40'_additional_charge_1` 			DECIMAL,
	`40'_additional_charge_2` 			DECIMAL,
	`40hc_ocean_freight_base_charge` 	DECIMAL,
	`40hc_pss` 							DECIMAL,
	`40hc_emergency_fuel_surcharge`     DECIMAL,
	`40hc_isps_charge` 					DECIMAL,
	`40hc_security_charge` 				DECIMAL,
	`40hc_war_risk` 					DECIMAL,
	`40hc_epc_charge` 					DECIMAL,
	`40hc_ets` 							DECIMAL,
	`40hc_admin_charge` 				DECIMAL,
	`40hc_bunker` 						DECIMAL,
	`40hc_low_sulfur` 					DECIMAL,
	`40hc_cuc` 							DECIMAL,
	`40hc_gri` 							DECIMAL,
	`40hc_erc` 							DECIMAL,
	`40hc_emergency_intermodel`			DECIMAL,
	`40hc_alameda_corridor` 			DECIMAL,
	`40hc_suez_canal` 					DECIMAL,
	`40hc_panama_canal` 				DECIMAL,
	`40hc_labor_surcharge` 			    DECIMAL,
	`40hc_additional_charge_1` 			DECIMAL,
	`40hc_additional_charge_2` 			DECIMAL
    );

-- 2. Create carrier tables for MSC, Evergreen, ONE, Wan Hai, and SM Line
CREATE TABLE msc   	   LIKE carrier_table_schema;
CREATE TABLE `one` 	   LIKE carrier_table_schema;
CREATE TABLE evergreen LIKE carrier_table_schema;
CREATE TABLE wan_hai   LIKE carrier_table_schema;
CREATE TABLE sm_line   LIKE carrier_table_schema;

DROP TABLE carrier_table_schema;

-- 3. Create forwarders and spot tables
CREATE TABLE forwarders (
	effective_date 					    DATE,
    end_date 							DATE,
    carrier_type                        VARCHAR(4), 								
	carrier_forwarder_name 			    VARCHAR(10),						 
	origin_continent 			        VARCHAR(15),
	origin_country 				        VARCHAR(15),
	origin_port                         VARCHAR(15),
	destination_port_of_discharge_coast VARCHAR(15),
	destination_port_of_discharge    	VARCHAR(20),
	move_ipi_ripi_cy  				 	VARCHAR(5),
	destination_cy_location          	VARCHAR(20),
	`20'_ocean_freight_base_charge`  	DECIMAL(6, 2),
    `20'_admin_charge` 			     	DECIMAL(5, 2),
    `20_additional_charge`            	DECIMAL(6, 2),
	`40'_ocean_freight_base_charge`  	DECIMAL(6, 2),
    `40_admin_charge` 	             	DECIMAL(5, 2),
	`40_additional_charge` 			 	DECIMAL(6, 2),	
	`40HC_ocean_freight_base_charge` 	DECIMAL(6, 2),
    `40HC_admin_charge` 			 	DECIMAL(5, 2),
    `40HC_additional_charge` 		 	DECIMAL(6, 2)
    );
CREATE TABLE spot LIKE forwarders;

-- 4. Create dray table
CREATE TABLE dray (
    destination_cy_location         VARCHAR(32),
    branch_destination              VARCHAR(32),
    drop_live_unload                VARCHAR(11),
    trucker                         VARCHAR(19),
    dray_base_rate                  DECIMAL(6, 2),
    drop_fee                        DECIMAL(5, 2),
    fuel_surcharge_pct              DECIMAL(5, 4),
    fuel_surcharge_amt              DECIMAL(6, 2),
    total_dray_1                    DECIMAL(6, 2),
    emergency_fuel_surcharge_pct    DECIMAL(5, 4),
    emergency_fuel_surcharge_amt    DECIMAL(6, 2),
    total_dray_2                    DECIMAL(6, 2),
    diane_fuel_surcharge_pct        DECIMAL(5, 4),
    diane_fuel_surcharge_amt        DECIMAL(6, 2),
    total_dray_3                    DECIMAL(6, 2),
    chassis_charge_per_day          DECIMAL(6, 2),
    chassis_split_charge            DECIMAL(6, 2),
    prepull                         DECIMAL(6, 2),
    yard_storage_if_applicable      DECIMAL(6, 2),
    free_hours                      VARCHAR(7),
    per_hour_charge_after_free_time DECIMAL(6, 2),
    layover_charge                  DECIMAL(6, 2)
);
