# 🛒 E-commerce Sales Analytics

An end-to-end data analytics project that explores **what drives sales in an online store**. The project covers data cleaning in **Python**, business analysis in **SQL** and an interactive dashboard in **Power BI** to understand revenue, customers, products, regions, payments and delivery.

---

## 📊 Dashboard Preview

![E-commerce Sales Dashboard](DASHBOARD%20REVIEW.jpeg)

---

## 📌 Project Overview

For any e-commerce business, knowing which products, regions and customers bring in the most revenue helps in planning stock, marketing and delivery. This project analyses a sales dataset of **5,000 orders** to answer key business questions about revenue, customer behaviour and operations.

**Key numbers**

| Metric | Value |
|--------|-------|
| Total orders | 5,000 |
| Columns | 12 |
| Missing values | None |
| Duplicate records | None |

---

## 🎯 Objectives

- Inspect and clean the sales dataset (data types, missing values, duplicates)
- Calculate key business metrics: total revenue, units sold, unique customers, average rating and average order value
- Find the best-performing product categories and regions
- Identify top customers and high-value customers
- Study monthly revenue trends
- Compare payment methods, delivery times and the effect of discounts
- Present the findings in an interactive Power BI dashboard

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python (pandas)** | Data inspection and cleaning |
| **SQL (MySQL)** | Business analysis queries |
| **Power BI** | Interactive dashboard and visualisation |
| **Jupyter / Google Colab** | Notebook environment |

---

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `E-COMMERCE CLEANING.ipynb` | Python notebook with data inspection and cleaning steps |
| `CLEANED E -COMMERCE SALES.csv` | Cleaned dataset used for SQL analysis |
| `SQL QUERIES.sql` | SQL queries for revenue, customer, product, region, payment and delivery analysis |
| `E-COMMERCE DASHBOARD.pbix` | Interactive Power BI dashboard |
| `DASHBOARD REVIEW.jpeg` | Screenshot of the dashboard |
| `README.md` | Project documentation |

---

## 🗂️ Dataset Description

| Column | Description |
|--------|-------------|
| `order_id` | Unique ID of each order |
| `order_date` | Date the order was placed |
| `customer_id` | Unique ID of the customer |
| `product_category` | Category of the product |
| `region` | Region of the order |
| `quantity` | Number of units ordered |
| `unit_price` | Price per unit |
| `discount` | Discount applied (as a fraction, e.g. 0.28 = 28%) |
| `payment_method` | Mode of payment |
| `delivery_days` | Days taken to deliver the order |
| `customer_rating` | Customer rating for the order |
| `revenue` | Total revenue from the order |

---

## 🔄 Project Workflow

### 1. Data Cleaning (Python)
- Loaded the dataset and checked its structure with `head()`, `tail()` and `info()`
- Converted `order_date` from text to a proper **datetime** type
- Checked for **missing values** and **duplicate records** (none found)
- Saved the cleaned dataset for analysis

### 2. Data Analysis (SQL)
Queries written to answer questions such as:
- How many orders, how much revenue and how many units were sold in total?
- How many unique customers are there, and what is the average customer rating?
- What is the revenue by product category and by region?
- Who are the top 10 customers, and which customers spend more than average?
- What is the monthly revenue trend, and which month earned the most?
- What is the average order value and the average revenue per customer?
- Which category earns the most revenue, sells the most units and has the best rating?
- How are categories ranked, and what share of total revenue does each contribute?
- How do payment methods compare, and how long does delivery take in each region?
- How does the discount level affect average revenue?

### 3. Dashboard (Power BI)
An interactive dashboard that visualises revenue, customers, product categories, regions and monthly trends.

---

## 💡 Business Insights

- **Data quality:** The dataset has 5,000 orders with no missing values or duplicates. Order dates in the data run up to **2035**, which looks unusual and should be checked before drawing time-based conclusions.
- **Total revenue and average order value:** `[ADD: total revenue and AOV]`
- **Top product category:** `[ADD: category with the highest revenue and its % share]`
- **Top regions:** `[ADD: regions ranked by revenue]`
- **Best month:** `[ADD: month with the highest revenue and the overall trend]`
- **Customers:** `[ADD: top customers and how much of revenue they contribute]`
- **Payment methods:** `[ADD: which payment method brings the most revenue]`
- **Delivery and ratings:** `[ADD: average delivery days by region and the best-rated category]`
- **Discounts:** `[ADD: how average revenue changes with discount level]`

---

## ✅ Business Recommendations

> Based on the insights above, the business can consider the following actions. Keep the points that your results support and remove the rest.

1. **Invest in top-performing categories.** Keep strong stock levels and promote the categories that bring the most revenue and sell the most units.
2. **Support weaker categories and regions.** Use targeted offers or marketing where revenue is low.
3. **Reward high-value customers.** Offer loyalty benefits to top spenders to keep them coming back.
4. **Improve delivery in slow regions.** If some regions take longer to deliver, review logistics, since delivery time affects customer ratings.
5. **Use discounts carefully.** If higher discounts do not lead to higher average revenue, reduce them to protect margins.
6. **Plan around seasonality.** Prepare stock and campaigns for the months with the highest revenue.

---

## 🏁 Conclusion

This project analysed **5,000 e-commerce orders** across 12 columns. The data was clean, with no missing values or duplicates, and the only data-type fix needed was converting `order_date` to datetime.

Using **Python** for cleaning, **SQL** for analysis and **Power BI** for visualisation, the project looked at revenue, customers, product categories, regions, payment methods, delivery time and discounts. `[ADD: one line on the key finding from your results]`

The findings can help the business decide where to focus stock, marketing and logistics to grow revenue and improve customer satisfaction.

**Future scope:** forecast future sales using time-series analysis.

---

## 🚀 How to Use This Project

1. Clone the repository
   ```bash
   git clone https://github.com/nayakbhavna778-sketch/E-COMMERCE-SALES-ANALYSIS.git
   ```
2. Open `E-COMMERCE CLEANING.ipynb` in Jupyter Notebook or Google Colab to view the cleaning steps.
3. Run `SQL QUERIES.sql` in MySQL after loading `CLEANED E -COMMERCE SALES.csv` into the `orders` table.
4. Open `E-COMMERCE DASHBOARD.pbix` in Power BI Desktop to explore the dashboard.

---

## 👩‍💻 About Me

Hi, I'm **Riddhi**, a student based in Delhi, India, with a growing interest in data analytics. I enjoy turning raw data into clear insights and I work with **Python (pandas, NumPy), SQL, Power BI and Tableau**.

This project is part of my data analytics portfolio, where I practise the full workflow: cleaning data, analysing it with SQL and presenting it visually.

📫 **Connect with me:** [LinkedIn](add-your-link) | [Email](mailto:add-your-email)

---

⭐ If you found this project useful, feel free to star the repository!
