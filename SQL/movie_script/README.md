## 🎬 Maven Movies SQL Analysis
### 📝 Introduction
This project involves running a series of SQL queries on the Maven Movies database to extract actionable insights for operational reporting, customer profiling, inventory management, and fraud detection. The dataset simulates a movie rental company, and the analysis covers various aspects such as staff information, inventory distribution, customer engagement, and financial metrics.

### 🎯 Objective
The purpose of this analysis is to provide a data-backed overview of the business operations. Specifically, the project aims to:

Retrieve staff contact and location details

Count inventory items per store

Analyze active customer base by store

Assess customer data security exposure

Understand film diversity and replacement cost

Monitor payment transactions for fraud risk

Identify top-performing customers based on rental history

### 🔍 Insights
#### 1. 👨‍💼 Staff Overview
We identified all staff members, along with their email addresses and the store location where they work. This gives clarity on staff distribution and enables direct communication per store.

#### 2. 🏪 Inventory Distribution by Store
Each store holds a different number of inventory items. Knowing how many film items are in stock at each store helps track physical assets and supports inventory balancing decisions.

#### 3. 👥 Active Customers by Store
We calculated the number of currently active customers per store. This metric is key for understanding where customer engagement is stronger and where marketing or customer service efforts may need to be increased.

#### 4. 🔐 Customer Email Count (Data Risk Exposure)
The total number of customer email addresses in the database was counted to evaluate the potential impact of a data breach — a basic metric for assessing data privacy liability.

#### 5. 🎬 Film Diversity
Each store’s inventory includes a different number of unique film titles, showing how varied the film offerings are across locations.

We also determined the total number of unique film categories, which reflects how broad the content library is in terms of genre.

#### 8. 🏆 High-Value Customers
A list of customers was ranked based on the number of rentals they’ve made. This reveals the most loyal or profitable customers and is useful for designing retention or loyalty programs.

### ✅ Conclusion
This SQL-based analysis provides a comprehensive operational snapshot of the Maven Movies business. It highlights key insights across staffing, inventory, customer behavior, revenue, and fraud risk. With these findings, stakeholders can:

Improve resource allocation

Enhance customer segmentation and marketing strategies

Strengthen data protection measures

Optimize pricing and inventory management

Monitor transactions more effectively for fraud prevention
