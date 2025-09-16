USE [Restaurant Analysis];

-- View the menu_items table.
SELECT * FROM menu_items

-- Find the number of items on the menu.
SELECT COUNT(*) FROM menu_items

-- What are the least and most expensive items on the menu?
SELECT * 
FROM menu_items
ORDER BY price;

SELECT * 
FROM menu_items
ORDER BY price DESC;

-- How many Italian dishes are on the menu?
SELECT COUNT(category) 
FROM menu_items
WHERE category = 'Italian';

-- What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- How many dishes are in each category?
SELECT category, COUNT(*) AS num_dishes
FROM menu_items
GROUP BY category;

-- What is the average dish price within each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;

