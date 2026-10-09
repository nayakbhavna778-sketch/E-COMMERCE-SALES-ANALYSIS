# 🛒 E-Commerce Sales Analysis

An end-to-end data analytics project that takes an e-commerce sales dataset through **data cleaning (Python)**, **business analysis (SQL)** and **dashboarding (Power BI)** to uncover insights on revenue, customers, products, regions, payments and delivery.

---

## 📊 Dashboard Preview

![E-Commerce Sales Dashboard](DASHBOARD%20REVIEW.jpeg)

---

## 🎯 Project Objective

To analyse 5,000 e-commerce orders and answer key business questions such as:

- How much revenue is the business generating, and how does it change over time?
- Which product categories earn the most revenue and sell the most units?
- Which payment methods do customers prefer?
- Which regions perform best, and where is delivery slowest?
- Who are the highest-value customers?
- How do discounts affect revenue?

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `CLEANED E -COMMERCE SALES.csv` | Final cleaned dataset used for SQL analysis and the dashboard |
| `E-COMMERCE CLEANING.ipynb` | Jupyter/Colab notebook with the data cleaning steps (Step 1) |
| `SQL QUERIES.sql` | 24 SQL queries for business analysis (Step 2) |
| `E-COMMERCE DASHBOARD.pbix` | Interactive Power BI dashboard (Step 3) |
| `DASHBOARD REVIEW.jpeg` | Screenshot of the final dashboard |
| `README.md` | Project documentation |

---

## 🛠️ Tools & Technologies

- **Python** (pandas) – data loading, inspection and cleaning
- **Google Colab / Jupyter Notebook** – notebook environment
- **MySQL** – database used for SQL analysis
- **Power BI** – dashboard design and visualisation

---

## 🗂️ Dataset Overview

**Size:** 5,000 orders × 12 columns

| Column | Description |
|--------|-------------|
| `order_id` | Unique ID of each order |
| `order_date` | Date the order was placed |
| `customer_id` | Unique ID of the customer |
| `product_category` | Category of the product (Beauty, Clothing, Electronics, Home) |
| `region` | Region of the order (North, South, East, West) |
| `quantity` | Number of units ordered |
| `unit_price` | Price per unit |
| `discount` | Discount applied, as a fraction (e.g. 0.28 = 28%) |
| `payment_method` | Mode of payment (Card, COD, Wallet) |
| `delivery_days` | Days taken to deliver the order |
| `customer_rating` | Customer rating for the order |
| `revenue` | Total revenue from the order |

---

## 🔄 Project Workflow

### Step 1 – Data Cleaning (Python)
Done in `E-COMMERCE CLEANING.ipynb`:

1. Imported pandas and loaded the raw CSV
2. Inspected the data using `head()`, `tail()` and `info()`
3. Converted `order_date` from text (`object`) to a proper **datetime** type
4. Checked for **missing values** – none found in any column
5. Checked for **duplicate rows** – none found
6. Saved the cleaned dataset as a new CSV (`index=False`)

### Step 2 – SQL Analysis (MySQL)
Done in `SQL QUERIES.sql`. The script creates the `ecommerce_db` database and an `orders` table, then answers 24 business questions covering:

| Topic | Examples |
|-------|----------|
| **KPIs** | Total orders, total revenue, units sold, unique customers, average rating |
| **Revenue breakdown** | Revenue by product category and by region, top 3 regions |
| **Customer analysis** | Top 10 customers, customers above average spend, average revenue per customer |
| **Time trends** | Monthly revenue trend, highest-revenue month, average order value |
| **Product categories** | Top category by revenue/units, category ranking (`RANK()`), revenue share %, best-rated category |
| **Payment & delivery** | Revenue and units by payment method, average delivery days per region |
| **Discounts** | Average revenue at each discount level |

SQL concepts used: `GROUP BY`, `HAVING`, aggregate functions, subqueries, window functions (`RANK() OVER`), date functions and `ROUND`.

### Step 3 – Dashboard (Power BI)
Built `E-COMMERCE DASHBOARD.pbix` with KPI cards, a monthly revenue trend, revenue by category, payment method split, sales by region and a ranked list of the top 5 customers.

---

## 📈 Key Metrics

| Metric | Value |
|--------|-------|
| 💰 Total Revenue | ₹5,109,776 |
| 📦 Total Orders | 5,000 |
| 👥 Total Customers | 989 |
| 🛍️ Quantity Sold | ~20K |

---

## 🔍 Key Insights

- **Revenue trend:** Monthly revenue peaked in **May**, with another strong rise in **August**. April and September–December were the weakest months.
- **Top category:** **Electronics** earns the most revenue (~₹1.8M), followed by **Clothing**, **Home** and **Beauty**.
- **Payment methods:** **Card** is the most-used method (46.31%), followed by **Cash on Delivery** (35%) and **Wallet** (18.69%).
- **Regional performance:** **West** leads (~₹1.35M), followed by North, South and East. The gap between regions is small, so demand is fairly balanced.
- **Customer base:** Revenue is well spread out. Even the top customer (ID 1663) contributes only about **0.3%** of total revenue, so the business does not depend on a few big buyers.

---

## ⚠️ Data Notes

- The dataset contains order dates running from **2022 up to 2035**, which is well into the future. This suggests the data is synthetic/sample data, and time-based results should be read with that in mind.
- No missing values or duplicate records were found, so no rows were removed during cleaning.

---

## 🚀 How to Use This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/nayakbhavna778-sketch/E-COMMERCE-SALES-ANALYSIS.git
   ```
2. **Review the cleaning process** – open `E-COMMERCE CLEANING.ipynb` in Jupyter Notebook, VS Code or Google Colab.
3. **Run the SQL analysis**
   - Open `SQL QUERIES.sql` in MySQL Workbench (or any MySQL client).
   - Run the setup section to create `ecommerce_db` and the `orders` table.
   - Import `CLEANED E -COMMERCE SALES.csv` into the `orders` table.
   - Run the queries one by one.
4. **Open the dashboard** – open `E-COMMERCE DASHBOARD.pbix` in [Power BI Desktop](https://powerbi.microsoft.com/desktop/).

---

## 📌 Conclusion

This project walks through a complete analytics workflow, from a raw sales file to a cleaned dataset, SQL-driven insights and an interactive dashboard. The findings highlight where revenue comes from (Electronics, West region, card payments) and show a healthy, evenly spread customer base.

---

## 👩‍💻 Author

**nayakbhavna778-sketch**
GitHub: [@nayakbhavna778-sketch](https://github.com/nayakbhavna778-sketch)

---

⭐ If you found this project helpful, feel free to star the repository!
