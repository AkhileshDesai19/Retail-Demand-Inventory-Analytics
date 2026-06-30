-- KPI Key Perfomance indicator


 --1. Total Revenue
 SELECT SUM(revenue) AS total_revenue
 FROM fact_retail_inventory;
 --  Total revenue is 550228884.91

 
 --2. Total Units Sold
 SELECT SUM(units_sold) AS total_unit_solds
 FROM fact_retail_inventory;
-- Total 9975582 units are sold 

 --3. Average Selling Price
 SELECT AVG(price) AS Avg_selling_price
 FROM fact_retail_inventory;
 -- 55.1351082079343365 is a Average selling price
 
 -- 4. Total Inventory Level
 SELECT SUM(inventory_level) AS total_ineventory 
 FROM fact_retail_inventory;
 -- 20063748 is a total Inventory level
 
 
 -- 5.  Best Performing Store (by Revenue)
 SELECT store_id, SUM(revenue) AS best_perfoming_store
 FROM fact_retail_inventory
 GROUP BY store_id
 ORDER BY best_perfoming_store DESC; 
 -- store id with S005 is best perfoming store by revenue

 
 --6. Best Performing Product Category (by Revenue)
 SELECT category, SUM(revenue) AS best_perform_store
 FROM fact_retail_inventory
 GROUP BY category
 ORDER BY best_perform_store DESC;
 --  product Category Furniture has highest revenue

 
 --7. Promotion Sales Lift (if supported by the data)
 WITH promotion_sales AS (
    SELECT
        AVG(CASE WHEN holiday_promotion = 1 THEN revenue END) AS avg_promotion_revenue,
        AVG(CASE WHEN holiday_promotion = 0 THEN revenue END) AS avg_non_promotion_revenue
    FROM fact_retail_inventory
)

SELECT
    ROUND(avg_promotion_revenue, 2) AS avg_revenue_during_promotion,
    ROUND(avg_non_promotion_revenue, 2) AS avg_revenue_without_promotion,
    ROUND(
        ((avg_promotion_revenue - avg_non_promotion_revenue)
        / avg_non_promotion_revenue) * 100,
        2
    ) AS promotion_sales_lift_percentage
FROM promotion_sales;
--  The average revenue during promotional periods was ₹7,530.51, compared to ₹7,523.67 during non-promotional periods.
--  Promotions resulted in a sales lift of only 0.09%.
--  This indicates that promotions had a negligible impact on revenue in the available historical data.


 -- 8. Stockout Rate
 SELECT
    COUNT(*) AS total_records,

    SUM(
        CASE
            WHEN inventory_level < units_sold THEN 1
            ELSE 0
        END
    ) AS stockout_records,

    ROUND(
        SUM(
            CASE
                WHEN inventory_level < units_sold THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS stockout_rate_percentage
FROM fact_retail_inventory;

 -- No stockout situations were identified based on the project definition (Inventory Level < Units Sold).
 -- The calculated stockout rate is 0.00%.
 -- This suggests that inventory levels were sufficient to meet recorded sales throughout the dataset.