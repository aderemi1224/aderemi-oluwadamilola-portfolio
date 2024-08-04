/*CASE STUDY QUESTIONS
EXPLORING THE MENU_ITEMS TABLE
1. What are numbers of item on the menu_items table?
2. What are the least and most expensive menu on the table?
3. How many italian dishes are on the menu, What are the least and most expensive italian dishes?
4. How many dishes are in each category? What is the average dish price within each category?
EXPLORING THE ORDER_DETAILS TABLE
1. View the order_details table. What is the date range of the table?
2. How many orders were made within this date range? How many items were ordered within this date range?
3. Which orders had the most number of items?
4. How many orders had more than 12 items?
ANALYZING CUSTOMER'S BEHAVIOR
1. Combine the menu_items and order_details tables into a single table
2. What were the least and most ordered items? What categories were they in?
3. What were the top 5 orders that spent the most money?
4. View the details of the highest spend order. Which specific items were purchased?*/

-- What are numbers of item on the menu_items table?
SELECT *
FROM menu_items;

-- What are the least and most expensive menu on the table?
SELECT
max(price) as least_expensive_item,
min(price) as most_expensive_item
FROM menu_items;

SELECT item_name
FROM menu_items
WHERE category = "Italian" 
ORDER BY price desc
LIMIT 1;

-- How many italian dishes are on the menu, What are the least and most expensive italian dishes?
SELECT item_name
FROM menu_items
WHERE category = "Italian" 
ORDER BY price ASC 
LIMIT 1;

-- How many dishes are in each category? What is the average dish price within each category?
SELECT category,
count(category) as no_of_category,
avg(price) as avg_price_of_meal
FROM menu_items
Group by category;

-- Exploring order_details table 
-- View the order_details table. What is the date range of the table?
SELECT min(order_date), Max(order_date)
FROM order_details;

-- How many orders were made within this date range? How many items were ordered within this date range?
SELECT distinct count(order_id)
FROM order_details;

-- Which orders had the most number of items?
SELECT order_id, count(item_id) as count_of_ordered_item
FROM order_details
GROUP BY order_id
ORDER BY count_of_ordered_item DESC;

-- How many orders had more than 12 items?
SELECT COUNT(*)
FROM 
(SELECT order_id, count(item_id) as count_of_ordered_item
FROM order_details
GROUP BY order_id
HAVING count_of_ordered_item  > 12) AS count_of_order_greater_12;

-- ANALYZING CUSTOMER BEHAVIOR
-- Combining both tables into a single table
SELECT menu_items.menu_item_id, menu_items.item_name, menu_items.category, menu_items.price
FROM menu_items
LEFT JOIN order_details
ON menu_items.menu_item_id = order_details.item_id;

-- What were the least and most ordered items? What categories were they in?
SELECT category, min(menu_item_id) as least_ordered_item,
max(menu_item_id) as most_ordered_item
FROM menu_items
GROUP BY category;

-- What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM menu_items
LEFT JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- View the details of the highest spend order. Which specific items were purchased?
SELECT order_id, item_name, price
FROM menu_items
LEFT JOIN order_details
ON menu_items.menu_item_id = order_details.item_id
WHERE order_id = 440;












