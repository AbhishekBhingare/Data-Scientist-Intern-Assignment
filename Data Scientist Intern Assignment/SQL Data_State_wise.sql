-- SELECT * FROM intern_new_schema.india_state_dataset;

-- Create the MySQL database
CREATE DATABASE  State_wise_data;
USE State_wise_data;

-- Create the Districts table
CREATE TABLE  Districts (
    DistrictCode INT  PRIMARY KEY,
    DistrictName VARCHAR(255)     
    
);


CREATE TABLE States (
    StateName VARCHAR(255)  ,
    Destrictcode INT REFERENCES intern_new_schema(Destrict_code)
    
    -- Other columns and constraints
);

-- Create the Population table
CREATE TABLE IF NOT EXISTS Population (
	Population INT,
    Male INT,
    Female INT,
    Literate INT,
    Male_Literate INT,
    Female_Literate INT,
    SC INT,
	Male_SC	INT,
    Female_SC INT,
    ST INT,
	Male_ST	INT,
    Female_ST INT,
    Workers	INT,
    Male_Workers INT,
    Female_Workers INT,
    Main_Workers INT,
    Marginal_Workers INT,
    Non_Workers	INT,
    Cultivator_Workers INT,
    Agricultural_Workers INT,
    Household_Workers INT,
    Other_Workers INT,
    Hindus INT,
    Muslims	INT,
    Christians INT,
    Sikhs INT,
    Buddhists INT,
    Jains INT,
    Others_Religions INT,
    Religion_Not_Stated	INT,
    LPG_or_PNG_Households INT,
    Housholds_with_Electric_Lighting INT,
    Households_with_Internet INT,
    Households_with_Computer INT,
    Rural_Households INT,
    Urban_Households INT,
    Households INT,
    Destrictcode INT REFERENCES intern_new_schema(Destrict_code)
);


-- Insert data from schema_one.table_one.column_one into schema_two.table_two.column_two
INSERT INTO state_wise_data.districts (DistrictCode)
SELECT Destrict_code
FROM intern_new_schema.india_state_dataset;

-- Insert data from schema_one.table_one.column_one into schema_two.table_two.column_two
INSERT INTO state_wise_data.districts (DistrictName)
SELECT District
FROM intern_new_schema.india_state_dataset;

-- Insert data from schema_one.table_one.column_one into schema_two.table_two.column_two
INSERT INTO state_wise_data.population (Population ,
    Male ,
    Female ,
    Literate ,
    Male_Literate ,
    Female_Literate ,
    SC ,
	Male_SC	,
    Female_SC ,
    ST ,
	Male_ST	,
    Female_ST ,
    Workers	,
    Male_Workers ,
    Female_Workers ,
    Main_Workers ,
    Marginal_Workers ,
    Non_Workers	,
    Cultivator_Workers ,
    Agricultural_Workers ,
    Household_Workers ,
    Other_Workers ,
    Hindus ,
    Muslims	,
    Christians ,
    Sikhs ,
    Buddhists ,
    Jains ,
    Others_Religions ,
    Religion_Not_Stated	,
    LPG_or_PNG_Households ,
    Housholds_with_Electric_Lighting ,
    Households_with_Internet ,
    Households_with_Computer ,
    Rural_Households ,
    Urban_Households ,
    Households )
SELECT Population ,
    Male ,
    Female ,
    Literate ,
    Male_Literate ,
    Female_Literate ,
    SC ,
	Male_SC	,
    Female_SC ,
    ST ,
	Male_ST	,
    Female_ST ,
    Workers	,
    Male_Workers ,
    Female_Workers ,
    Main_Workers ,
    Marginal_Workers ,
    Non_Workers	,
    Cultivator_Workers ,
    Agricultural_Workers ,
    Household_Workers ,
    Other_Workers ,
    Hindus ,
    Muslims	,
    Christians ,
    Sikhs ,
    Buddhists ,
    Jains ,
    Others_Religions ,
    Religion_Not_Stated	,
    LPG_or_PNG_Households ,
    Housholds_with_Electric_Lighting ,
    Households_with_Internet ,
    Households_with_Computer ,
    Rural_Households ,
    Urban_Households ,
    Households
FROM intern_new_schema.india_state_dataset;


-- Insert data from schema_one.table_one.column_one into schema_two.table_two.column_two
INSERT INTO state_wise_data.states (StateName)
SELECT State
FROM intern_new_schema.india_state_dataset;

-- Insert data from schema_one.table_one.column_one into schema_two.table_two.column_two
INSERT INTO schema_two.table_two (column_two)
SELECT column_one
FROM schema_one.table_one;


