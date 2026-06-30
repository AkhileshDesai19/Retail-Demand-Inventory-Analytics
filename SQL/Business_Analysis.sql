-- # Business Analysis
SELECT * FROM fact_retail_inventory;
--                                                              # Inventory Analysis

--1.  Which products are frequently at risk of stockout? 
--  stock out when inventory(available) is less than demand
SELECT product_id, COUNT(*) AS products_frequently_stockout
FROM fact_retail_inventory
WHERE inventory_level < demand_forecast
GROUP BY product_id
ORDER  BY products_frequently_stockout DESC;
-- Observation
-- a products with product_id P004 becomes frequently stockout also P0019,P0013,P0010,P009 also have 
-- highest count of stockout


--2. Which products are consistently overstocked?
-- overstock means inventory(available) more products than demand
SELECT product_id, COUNT(*) AS products_overstock
FROM fact_retail_inventory
WHERE inventory_level > demand_forecast
GROUP BY product_id
ORDER BY products_overstock DESC;
-- -- Observation:
-- Products with the highest overstock_count consistently maintain
-- inventory levels above forecasted demand.
-- These products should be reviewed to optimize inventory levels
-- and reduce inventory holding costs.


--3.  Which stores require more frequent inventory replenishment?
-- which stores need to order more 
SELECT store_id, COUNT(*) AS replenshment_count
FROM fact_retail_inventory
WHERE inventory_level < demand_forecast
GROUP BY store_id
ORDER BY replenshment_count DESC;
--  Observation:
-- Stores with the highest replenishment_count experienced the greatest
-- number of instances where forecasted demand exceeded available inventory.
-- These stores should be prioritized for more frequent inventory replenishment.


                                                                     -- # Sales Performance
																	 
--4. Which products generate the highest revenue?
SELECT product_id, SUM(revenue) AS highest_revenue
FROM fact_retail_inventory
GROUP BY product_id
ORDER BY highest_revenue DESC;
--  Product P0020 generates a highest revenue 28306192.40 also many products generates a good revenue
-- so retailer should focus on this products.

--5. Which product categories contribute the most revenue?
SELECT category, SUM(revenue) AS most_revenue
FROM fact_retail_inventory
GROUP BY category
ORDER BY most_revenue DESC;
-- observation
-- category Furniture contributes for most revenue also behind that
-- Groceries and clothing also makes most revenue so retailer should focus on this categories

--6. Which store generates the highest revenue?
SELECT store_id, SUM(revenue) AS highest_revenue
FROM fact_retail_inventory
GROUP BY store_id
ORDER BY highest_revenue DESC;
--  store S005 creted a highest revenue  so retailer should prioritize this 

--7. Which store generates the lowest revenue?
SELECT store_id, SUM(revenue) AS highest_revenue
FROM fact_retail_inventory
GROUP BY store_id
ORDER BY highest_revenue ASC;
-- store S001 generates a lowest revenue so need to focus on that store why they generates low sales

--                                                               # Promotion Analysis

-- 8. Do promotions significantly increase revenue?
SELECT holiday_promotion, ROUND(AVG(revenue)) AS rs
FROM fact_retail_inventory
GROUP BY holiday_promotion
ORDER BY rs DESC;


--  9. Which product categories benefit the most from promotions?

WITH category_promotion AS (
    SELECT
        category,
        AVG(CASE WHEN holiday_promotion = 1 THEN revenue END) AS avg_promotion_revenue,
        AVG(CASE WHEN holiday_promotion = 0 THEN revenue END) AS avg_non_promotion_revenue
    FROM fact_retail_inventory
    GROUP BY category
)

SELECT
    category,
    ROUND(avg_promotion_revenue, 2) AS avg_revenue_with_promotion,
    ROUND(avg_non_promotion_revenue, 2) AS avg_revenue_without_promotion,
    ROUND(
        ((avg_promotion_revenue - avg_non_promotion_revenue)
        / avg_non_promotion_revenue) * 100,
        2
    ) AS promotion_lift_percentage
FROM category_promotion
ORDER BY promotion_lift_percentage DESC;
-- Observation:
-- Categories with the highest Promotion Lift Percentage experienced
-- the greatest increase in average revenue during promotional periods.
-- These categories are the most responsive to promotions and should
-- be prioritized in future marketing campaigns.


--                                                   # Pricing & Demand
-- 10. Does competitor pricing appear to influence demand?

SELECT
    category,
    ROUND(AVG(competitor_pricing),2) AS avg_competitor_price,
    ROUND(AVG(demand_forecast),2) AS avg_demand_forecast,
    ROUND(AVG(units_sold),2) AS avg_units_sold
FROM fact_retail_inventory
GROUP BY category
ORDER BY avg_competitor_price DESC;
-- Observation:
-- Compare average competitor pricing with average demand forecast
-- and units sold across categories to identify whether higher or
-- lower competitor prices are associated with changes in demand.


-- 11.How accurate are demand forecasts compared to actual units sold?

SELECT
    ROUND(AVG(demand_forecast),2) AS avg_demand_forecast,
    ROUND(AVG(units_sold),2) AS avg_actual_units_sold,
    ROUND(AVG(ABS(demand_forecast - units_sold)),2) AS average_forecast_error
FROM fact_retail_inventory;
-- Observation:
-- The average forecast error represents the average difference
-- between forecasted demand and actual units sold.
-- A lower forecast error indicates more accurate demand forecasting.



--                                        # Seasonality Analysis
-- 12. Which season records the highest demand?
SELECT seasonality, SUM(demand_forecast) AS highest_demand
FROM fact_retail_inventory
GROUP BY seasonality
ORDER BY highest_demand DESC;
-- Observation:
-- Autumn recorded the highest forecasted demand.
-- The company should increase inventory levels before the Autumn season
-- to avoid potential stock shortages.

-- 13. Do holidays and promotions increase demand?

SELECT
    holiday_promotion,
    ROUND(AVG(demand_forecast), 2) AS avg_demand_forecast,
    ROUND(AVG(units_sold), 2) AS avg_units_sold
FROM fact_retail_inventory
GROUP BY holiday_promotion;


--                                                                     #Business Recommendations
--  14. Which products should be prioritized for restocking?
SELECT product_id , COUNT(*) AS most_demand_products
FROM fact_retail_inventory
WHERE inventory_level < demand_forecast
GROUP BY product_id
ORDER BY most_demand_products DESC;

--  15. Which products or categories should have their inventory reduced?

SELECT
    category,
    COUNT(*) AS overstock_count
FROM fact_retail_inventory
WHERE inventory_level > demand_forecast
GROUP BY category
ORDER BY overstock_count DESC;