--  Database Created "retail_inventory_db"
-- Now Let Create A  Table "fact_retail_inventory"
-- also import a data in this table form cleaned csv file

CREATE TABLE fact_retail_inventory (
    date DATE NOT NULL,
    store_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    category VARCHAR(50) NOT NULL,
    region VARCHAR(30) NOT NULL,
    inventory_level INTEGER NOT NULL,
    units_sold INTEGER NOT NULL,
    units_ordered INTEGER NOT NULL,
    demand_forecast NUMERIC(10,2) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    discount INTEGER NOT NULL,
    weather_condition VARCHAR(30) NOT NULL,
    holiday_promotion INTEGER NOT NULL,
    competitor_pricing NUMERIC(10,2) NOT NULL,
    seasonality VARCHAR(20) NOT NULL,
    revenue NUMERIC(12,2) NOT NULL,
    month VARCHAR(15) NOT NULL,
    year INTEGER NOT NULL,
    quarter INTEGER NOT NULL
);

SELECT * FROM fact_retail_inventory;


--  Data Imported in a Tabel

SELECT * FROM fact_retail_inventory;

