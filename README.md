# 📊 Retail Demand & Inventory Analytics

### Optimizing Inventory and Sales Performance using Python, PostgreSQL, SQL & Power BI

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github)

---

## 📖 Project Overview

Retail businesses generate massive amounts of sales and inventory data every day. Efficient inventory management is essential to prevent stockouts, reduce excess inventory, and maximize revenue.

This end-to-end Data Analytics project analyzes historical retail sales and inventory data to identify demand patterns, evaluate inventory performance, measure the effectiveness of promotions, and uncover actionable business insights.

The project follows the complete analytics lifecycle—from data cleaning and preprocessing to SQL-based business analysis and interactive Power BI dashboard development.

---

## 🎯 Business Problem

A retail company operates multiple stores across different regions and sells products from various categories.

The company faces several operational challenges:

- Frequent stockouts causing lost sales opportunities.
- Overstocked products increasing storage costs.
- Limited visibility into product demand across stores.
- Difficulty understanding the impact of promotions and seasonal trends.
- Lack of data-driven insights for inventory replenishment and pricing decisions.

Management requires an interactive analytics solution to monitor business performance and support better decision-making.

---

## 🎯 Project Objectives

The primary objectives of this project are to:

- Analyze historical retail sales and inventory data.
- Identify stockout and overstock situations.
- Evaluate sales performance across stores and product categories.
- Measure the impact of promotions on revenue.
- Analyze demand forecasting accuracy.
- Study seasonal demand trends.
- Develop an interactive Power BI dashboard for business stakeholders.
- Provide actionable business recommendations for inventory optimization.

---

# 🚀 Project Workflow

```text
Raw Retail Dataset
        │
        ▼
Python Data Cleaning & Preprocessing
        │
        ▼
PostgreSQL Database
        │
        ▼
SQL Analysis & Business Insights
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Recommendations
```

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| Python (Pandas, NumPy) | Data Cleaning & Preprocessing |
| PostgreSQL | Database Management |
| SQL | Exploratory Data Analysis & Business Analysis |
| Power BI | Interactive Dashboard Development |
| DAX | KPI Calculations & Measures |
| Git & GitHub | Version Control |

# 📂 Dataset Information

The dataset represents historical retail sales and inventory transactions across multiple stores and product categories.

### Dataset Features

| Feature | Description |
|---------|-------------|
| Date | Transaction Date |
| Store ID | Unique Store Identifier |
| Product ID | Unique Product Identifier |
| Category | Product Category |
| Region | Store Region |
| Inventory Level | Current Inventory Available |
| Units Sold | Quantity Sold |
| Units Ordered | Quantity Ordered |
| Demand Forecast | Predicted Customer Demand |
| Price | Product Selling Price |
| Discount | Discount Percentage |
| Weather Condition | Weather During Sale |
| Holiday Promotion | Promotion Indicator (0 = No, 1 = Yes) |
| Competitor Pricing | Competitor Product Price |
| Seasonality | Season of Sale |
| Revenue | Total Revenue Generated |

---

# 🧹 Data Cleaning & Preprocessing (Python)

Before performing analysis, the dataset was cleaned and preprocessed using **Python (Pandas)**.

### Data Cleaning Steps

- Removed duplicate records
- Handled missing values
- Corrected inconsistent data types
- Standardized column names
- Verified numerical data consistency
- Exported cleaned dataset for database import

### Python Libraries Used

- Pandas
- NumPy

The cleaned dataset was then imported into PostgreSQL for structured storage and SQL analysis.

---

# 🗄 Database Design (PostgreSQL)

The cleaned dataset was imported into a PostgreSQL database to enable structured querying and business analysis.

### Database Table

**fact_retail_inventory**

The table contains transactional retail inventory data including:

- Product Information
- Store Information
- Sales Metrics
- Inventory Metrics
- Pricing Information
- Forecast Data
- Promotion Details
- Seasonal Information

Using PostgreSQL enabled efficient querying, aggregation, filtering, and business reporting.

---

# 📊 SQL Analysis

SQL was used to perform Exploratory Data Analysis (EDA) and answer important business questions.

### Exploratory Data Analysis (EDA)

The following analyses were performed:

- Total number of records
- Number of stores
- Number of products
- Number of categories
- Number of regions
- Dataset date range
- Sales distribution across stores
- Inventory distribution across stores
- Category-wise inventory analysis
- Average selling price by category
- Promotion distribution
- Outlier detection

---

# 📈 Business Analysis Using SQL

Business-focused SQL queries were written to answer the following questions:

## 📦 Inventory Analysis

- Which products are frequently at risk of stockout?
- Which products are consistently overstocked?
- Which stores require frequent replenishment?

---

## 💰 Sales Performance

- Which products generate the highest revenue?
- Which categories contribute the most revenue?
- Which stores generate the highest revenue?
- Which stores generate the lowest revenue?

---

## 🎯 Promotion Analysis

- Do promotions significantly increase revenue?
- Which categories benefit the most from promotions?

---

## 💲 Pricing & Demand Analysis

- Does competitor pricing influence product demand?
- How accurate are demand forecasts compared to actual sales?

---

## 🌦 Seasonality Analysis

- Which season records the highest demand?
- Do seasonal trends influence sales?
- How do holidays affect revenue generation?

---

# 📌 Key KPIs

The following business KPIs were calculated using SQL and Power BI.

- 💰 Total Revenue
- 📦 Total Units Sold
- 📥 Total Units Ordered
- 🏬 Total Inventory
- 💵 Average Selling Price
- 📊 Average Inventory
- 🔄 Inventory Turnover
- 🎯 Forecast Accuracy
- 🛒 Promotion Revenue
- 🌍 Total Stores
- 📂 Total Categories
- 📍 Total Regions

# 📊 Power BI Dashboard

An interactive **4-page Power BI dashboard** was developed to transform raw retail data into meaningful business insights.

The dashboard enables stakeholders to:

- Monitor overall business performance.
- Analyze inventory health.
- Evaluate sales and promotion effectiveness.
- Compare demand forecasts with actual sales.
- Support data-driven inventory and pricing decisions.

---

# 📸 Dashboard Preview

## 1️⃣ Executive Overview

![Executive Overview](Images/Executive_Overview.png)

### Purpose

Provides a high-level summary of business performance through key KPIs and sales trends.

### Visuals Included

- KPI Cards
- Revenue Trend
- Revenue by Category (Treemap)
- Revenue by Region
- Revenue by Season
- Top Products by Revenue
- Interactive Slicers

---

## 2️⃣ Inventory Analysis

![Inventory Analysis](Images/Inventory_Analysis.png)

### Purpose

Analyzes inventory performance to identify stockout risks, overstock situations, and inventory distribution.

### Visuals Included

- KPI Cards
- Inventory vs Units Sold (Scatter Plot)
- Inventory by Category
- Inventory vs Forecast Demand
- Top Products by Inventory
- Product Inventory Table
- Interactive Slicers

---

## 3️⃣ Sales & Promotion Analysis

![Sales & Promotion](Images/Sales_Promotion.png)

### Purpose

Evaluates sales performance across stores, categories, and promotions.

### Visuals Included

- KPI Cards
- Revenue by Store
- Revenue Trend
- Category Treemap
- Promotion Analysis
- Ribbon Chart
- Sales Matrix

---

## 4️⃣ Pricing & Demand Analysis

![Pricing & Demand](Images/Pricing_Demand.png)

### Purpose

Examines pricing strategy, demand forecasting accuracy, discounts, and seasonal performance.

### Visuals Included

- KPI Cards
- Competitor Pricing vs Units Sold (Scatter Plot)
- Forecast vs Actual Demand
- Revenue by Discount
- Seasonal Revenue Analysis
- Revenue Heatmap
- Waterfall Chart

---

# 🎯 Dashboard Features

### Interactive Filters

Users can dynamically filter the dashboard using:

- Year
- Region
- Category
- Store
- Promotion Status
- Season

---

### Interactive Capabilities

- Cross Filtering
- Cross Highlighting
- Drill Down
- Tooltips
- Dynamic KPIs
- Page Navigation
- Responsive Visual Interactions

---

# 📈 DAX Measures

Several DAX measures were created to support business reporting.

### KPI Measures

- Total Revenue
- Total Units Sold
- Total Units Ordered
- Total Inventory
- Average Selling Price
- Average Inventory
- Inventory Turnover
- Forecast Accuracy
- Promotion Revenue
- Non-Promotion Revenue
- Average Competitor Price
- Average Forecast Demand

These measures provide dynamic calculations that automatically respond to user-selected filters.

# 📈 Key Insights

The analysis uncovered several important business insights:

### 📦 Inventory Insights

- Certain products consistently maintain high inventory levels while generating relatively low sales, indicating potential overstock situations.
- A few high-demand products show comparatively lower inventory levels, increasing the risk of stockouts.
- Inventory distribution varies across stores and product categories, highlighting opportunities for inventory optimization.

---

### 💰 Sales Insights

- Revenue is concentrated among a small number of product categories.
- Sales performance differs significantly across stores and regions.
- High-performing products contribute a major share of overall revenue.

---

### 🎯 Promotion Insights

- Promotional campaigns positively impact revenue for several product categories.
- Some categories respond better to promotions than others, indicating opportunities for targeted marketing strategies.

---

### 💲 Pricing Insights

- Competitor pricing influences customer demand for several products.
- Products with competitive pricing generally achieve better sales performance.

---

### 📅 Demand Forecast Insights

- Demand forecasts closely align with actual sales, demonstrating good forecasting accuracy.
- Seasonal trends significantly influence product demand and should be considered during inventory planning.

---

# 💡 Business Recommendations

Based on the analysis, the following recommendations are suggested:

### 📦 Inventory Management

- Prioritize restocking products with consistently high demand.
- Reduce inventory levels for slow-moving products to minimize holding costs.
- Monitor inventory turnover regularly to improve operational efficiency.

### 📈 Sales Strategy

- Focus marketing efforts on high-performing products and categories.
- Expand successful product categories into additional regions where appropriate.

### 🎯 Promotion Strategy

- Increase promotional activities for categories with strong promotion response.
- Evaluate the effectiveness of low-performing promotional campaigns before future investments.

### 💲 Pricing Strategy

- Continuously monitor competitor pricing.
- Review pricing strategies for products facing significant competitive pressure.

### 📅 Demand Planning

- Increase inventory before peak demand seasons.
- Use historical demand forecasts to improve replenishment planning.

---

# 📁 Repository Structure

```text
Retail-Demand-Inventory-Analytics/
│
├── Dashboard/
│   └── Retail_Demand_Inventory_Dashboard.pbix
│
├── Dataset/
│   ├── retail_store_inventory.csv
│   └── cleaned_retail_inventory.csv
│
├── Python/
│   └── Retail_Data_Cleaning.ipynb
│
├── SQL/
│   ├── Database_Schema.sql
│   ├── Exploratory_Data_Analysis.sql
│   ├── Business_Analysis.sql
│   └── Views.sql
│
├── Images/
│   ├── Executive_Overview.png
│   ├── Inventory_Analysis.png
│   ├── Sales_Promotion.png
│   └── Pricing_Demand.png
│
└── README.md
```


---

# ▶️ How to Run the Project

1. Clone the repository.

```bash
git clone https://github.com/AkhileshDesai19/Retail-Demand-Inventory-Analytics-Optimizing-Inventory-and-Sales-Performance.git
```

2. Open the Python notebook to review the data cleaning process.

3. Import the cleaned dataset into PostgreSQL.

4. Execute the SQL scripts for exploratory and business analysis.

5. Open the `.pbix` file in **Power BI Desktop**.

6. Interact with the dashboard using slicers and filters to explore business insights.

---

# 🚀 Future Improvements

Potential enhancements for future versions include:

- Integrating real-time sales and inventory data.
- Developing machine learning models for demand forecasting.
- Automating data refresh using Power BI Service.
- Building inventory alert systems for low-stock products.
- Adding role-based security (RLS) for different business users.
- Publishing the dashboard to Power BI Service for online access.

---

# 👨‍💻 Author

**Akhilesh Desai**

Aspiring Data Analyst passionate about transforming raw data into actionable business insights through Python, SQL, PostgreSQL, and Power BI.

### Connect with Me

- 💼 LinkedIn: akhileshdesai19
- 💻 GitHub: https://github.com/AkhileshDesai19

---

## ⭐ If you found this project helpful

If you found this project useful or interesting, consider giving it a ⭐ on GitHub.

Feedback and suggestions are always welcome!

---
