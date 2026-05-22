-- ==============================================
-- Script:      Table Creation Script
-- Description:	Creates empty tables for csv data to be loaded in to
-- Author:	    Brandon J. Knight
-- Date         5-22-2026
-- ==============================================

-- Manually load dray table after runing this script

USE transportation_report;

-- 1. Create carrier table strcuture
CREATE TABLE carrier_table_schema (
	effective_date 						INT,
    end_date 							INT,
    carrier_type 						VARCHAR(50), 								
	carrier_forwarder_name              VARCHAR(50),						
	origin_continent                    VARCHAR(50),
	origin_country 					    VARCHAR(50),
	origin_port 				        VARCHAR(50),
	destination_port_of_discharge_coast VARCHAR(50),
	destination_port_of_discharge       VARCHAR(50),
	move_ipi_ripi_cy 					VARCHAR(50),
	destination_cy_location 			VARCHAR(50),
	ocean_freight_base_charge_20ft 		DECIMAL(6,2),
	pss_20ft 							DECIMAL(6,2),
	emergency_fuel_surcharge_20ft 		DECIMAL(6,2),
	isps_charge_20ft 					DECIMAL(6,2),
	security_charge_20ft 				DECIMAL(6,2),
	war_risk_20ft     				    DECIMAL(6,2),
	epc_charge_20ft                     DECIMAL(6,2),
	ets_20ft 							DECIMAL(6,2),
	admin_charge_20ft 				    DECIMAL(6,2),
	bunker_20ft 						DECIMAL(6,2),
	low_sulfur_20ft 					DECIMAL(6,2),
	cuc_20ft 							DECIMAL(6,2),
	gri_20ft 							DECIMAL(6,2),
	erc_20ft 					        DECIMAL(6,2),
	emergency_intermodel_20ft 			DECIMAL(6,2),
	alameda_corridor_20ft 				DECIMAL(6,2),
	suez_canal_20ft 					DECIMAL(6,2),
	panama_canal1_20ft 				    DECIMAL(6,2),
	labor_surcharge_20ft 				DECIMAL(6,2),
	additional_charge_1_20ft 			DECIMAL(6,2),
	additional_charge_2_20ft 			DECIMAL(6,2),
	ocean_freight_base_charge_40ft    	DECIMAL(6,2),
	pss_40ft   						    DECIMAL(6,2),
	emergency_fuel_surcharge_40ft 	    DECIMAL(6,2),
	isps_charge_40ft 	 		 		DECIMAL(6,2),
	security_charge_40ft  			 	DECIMAL(6,2),
	war_risk_40ft 	 	 		  	  	DECIMAL(6,2),
	epc_charge_40ft 	 	 		  	DECIMAL(6,2),
	ets_40ft 							DECIMAL(6,2),
	admin_charge_40ft 	 	 	 	 	DECIMAL(6,2),
	bunker_40ft 	 			 		DECIMAL(6,2),
	low_sulfur_40ft 	 		 	 	DECIMAL(6,2),
	cuc_40ft 	 	 		 		 	DECIMAL(6,2),
	gri_40ft 	 		 	 		 	DECIMAL(6,2),
	erc_40ft 							DECIMAL(6,2),
	emergency_intermodel_40ft 			DECIMAL(6,2),
	alameda_corridor_40ft 				DECIMAL(6,2),
	suez_canal_40ft 					DECIMAL(6,2),
	panama_canal_40ft 					DECIMAL(6,2),
	labor_surcharge_40ft 				DECIMAL(6,2),
	additional_charge_1_40ft 			DECIMAL(6,2),
	additional_charge_2_40ft 			DECIMAL(6,2),
	ocean_freight_base_charge_40hc 		DECIMAL(6,2),
	pss_40hc 							DECIMAL(6,2),
	emergency_fuel_surcharge_40hc       DECIMAL(6,2),
	isps_charge_40hc 					DECIMAL(6,2),
	security_charge_40hc 				DECIMAL(6,2),
	war_risk_40hc 						DECIMAL(6,2),
	epc_charge_40hc 					DECIMAL(6,2),
	ets_40hc 							DECIMAL(6,2),
	admin_charge_40hc 					DECIMAL(6,2),
	bunker_40hc 						DECIMAL(6,2),
	low_sulfur_40hc 					DECIMAL(6,2),
	cuc_40hc 							DECIMAL(6,2),
	gri_40hc 							DECIMAL(6,2),
	erc_40hc 							DECIMAL(6,2),
	emergency_intermodel_40hc			DECIMAL(6,2),
	alameda_corridor_40hc 				DECIMAL(6,2),
	suez_canal_40hc 					DECIMAL(6,2),
	panama_canal_40hc 					DECIMAL(6,2),
	labor_surcharge_40hc 			    DECIMAL(6,2),
	additional_charge_1_40hc 			DECIMAL(6,2),
	additional_charge_2_40hc 			DECIMAL(6,2)
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
	effective_date 					    INT,
    end_date 							INT,
    carrier_type                        VARCHAR(4), 								
	carrier_forwarder_name 			    VARCHAR(10),						 
	origin_continent 			        VARCHAR(15),
	origin_country 				        VARCHAR(15),
	origin_port                         VARCHAR(15),
	destination_port_of_discharge_coast VARCHAR(15),
	destination_port_of_discharge    	VARCHAR(20),
	move_ipi_ripi_cy  				 	VARCHAR(5),
	destination_cy_location          	VARCHAR(20),
	ocean_freight_base_charge_20ft  	DECIMAL(6, 2),
    admin_charge_20ft 			     	DECIMAL(5, 2),
    additional_charge_20ft            	DECIMAL(6, 2),
	ocean_freight_base_charge_40ft  	DECIMAL(6, 2),
    admin_charge_40ft 	             	DECIMAL(5, 2),
	additional_charge_40ft 			 	DECIMAL(6, 2),	
	ocean_freight_base_charge_40hc 		DECIMAL(6, 2),
    admin_charge_40hc 			 		DECIMAL(5, 2),
    additional_charge_40hc 		 		DECIMAL(6, 2)
    );
CREATE TABLE spot LIKE forwarders;

-- 4. Manually load dray table

-- 5. Create origin table
CREATE TABLE origin_chrgs (
	customer_name                    VARCHAR(20),
	vendor_name                      VARCHAR(20),
	inco_terms                       VARCHAR(20),
	origin_port                      VARCHAR(20),
	branch_destination               VARCHAR(20),
	move                             VARCHAR(20),
	orc_20ft                         DECIMAL(6, 2),
	seal_20ft                        DECIMAL(5, 2),
	doc_20ft                         DECIMAL(5, 2),
	ams_20ft                         DECIMAL(5, 2),
	vgm_20ft                         DECIMAL(5, 2),
	trucking_fee_20ft                DECIMAL(5, 2),
	customs_fee_20ft                 DECIMAL(5, 2),
	weighing_fee_20ft                DECIMAL(5, 2),
	handling_20ft                    DECIMAL(5, 2),
	eir_20ft                         DECIMAL(5, 2),
	cntr_pickup_other_depot_20ft     DECIMAL(5, 2),
	cntr_pickup_outer_storage_20ft   DECIMAL(5, 2),
	hbl_tlx_release_20ft             DECIMAL(5, 2),
	inspection_20ft                  DECIMAL(5, 2),
	fumigation_20ft                  DECIMAL(5, 2),
	infrastructure_20ft              DECIMAL(5, 2),
	lift_on_20ft                     DECIMAL(5, 2),
	orc_40ft                         DECIMAL(6, 2),
	seal_40ft                        DECIMAL(5, 2),
	doc_40ft                         DECIMAL(5, 2),
	ams_40ft                         DECIMAL(5, 2),
	vgm_40ft                         DECIMAL(5, 2),
	trucking_fee_40ft                DECIMAL(5, 2),
	customs_fee_40ft                 DECIMAL(5, 2),
	weighing_fee_40ft                DECIMAL(5, 2),
	handling_40ft                    DECIMAL(5, 2),
	eir_40ft                         DECIMAL(5, 2),
	cntr_pickup_other_depot_40ft     DECIMAL(5, 2),
	cntr_pickup_outer_storage_40ft   DECIMAL(5, 2),
	hbl_tlx_release_40ft             DECIMAL(5, 2),
	inspection_40ft                  DECIMAL(5, 2),
	fumigation_40ft                  DECIMAL(5, 2),
	infrastructure_40ft              DECIMAL(5, 2),
	lift_on_40ft                     DECIMAL(5, 2),
	orc_40hc                         DECIMAL(6, 2),
	seal_40hc                        DECIMAL(5, 2),
	doc_40hc                         DECIMAL(5, 2),
	ams_40hc                         DECIMAL(5, 2),
	vgm_40hc                         DECIMAL(5, 2),
	trucking_fee_40hc                DECIMAL(5, 2),
	customs_fee_40hc                 DECIMAL(5, 2),
	weighing_fee_40hc                DECIMAL(5, 2),
	handling_40hc                    DECIMAL(5, 2),
	eir_40hc                         DECIMAL(5, 2),
	cntr_pickup_other_depot_40hc     DECIMAL(5, 2),
	cntr_pickup_outer_storage_40hc   DECIMAL(5, 2),
	hbl_tlx_release_40hc             DECIMAL(5, 2),
	inspection_40hc                  DECIMAL(5, 2),
	fumigation_40hc                  DECIMAL(5, 2),
	infrastructure_40hc              DECIMAL(5, 2),
	lift_on_40hc                     DECIMAL(5, 2)
);

-- 6. Create arb table
CREATE TABLE arbs (
	carrier_forwarder_name VARCHAR(10),
    origin_continent       VARCHAR(10),
    origin_country		   VARCHAR(10),
    origin_port            VARCHAR(10),
    arb_20ft               DECIMAL(5, 2),
    arb_40ft               DECIMAL(5, 2),
    arb_40hc               DECIMAL(5, 2)
);

-- 7. Create domestic table
CREATE TABLE domestic (
    carrier_forwarder_name  VARCHAR(15),
    destination_cy_location VARCHAR(30),
    broker_pier_pass        DECIMAL(4, 2),
    wowl_fee                DECIMAL(4, 2),
    toll                    DECIMAL(5, 2),
    gate_fee                DECIMAL(5, 2),
    per_diem_free_days      INT,
    calendar_or_working     VARCHAR(3),
    documentation_chrg      DECIMAL(4, 2),
    bol_fee                 DECIMAL(4, 2),
    handling_fee            DECIMAL(5, 2),
    wharfage_chrg           DECIMAL(5, 2),
    pier_pass_chrg_20ft     DECIMAL(4, 2),
    clean_truck_fee_20ft    DECIMAL(4, 2),
    ams_fee_20ft            DECIMAL(5, 2),
    pier_pass_chrg_40ft     DECIMAL(4, 2),
    clean_truck_fee_40ft    DECIMAL(4, 2),
    ams_fee_40ft            DECIMAL(5, 2),
    pier_pass_chrg_40hc     DECIMAL(4, 2),
    clean_truck_fee_40hc    DECIMAL(4, 2),
    ams_fee_40hc            DECIMAL(5, 2)
);