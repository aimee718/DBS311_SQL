-- ***********************
-- Name: Eun kyung (Aimee) Lee
-- ID: 056342132
-- Date: 10-16-2020
-- Purpose: Lab 04 DBS311
-- ***********************

/*1.	Display cities that no warehouse is located in them. (use set operators to answer this question)*/
SELECT a.city 
FROM locations a 
INNER JOIN 
    (SELECT location_id 
     FROM locations 
     MINUS 
     SELECT location_id 
     FROM warehouses) b 
ON a.location_id = b.location_id 
ORDER BY a.city;
--Use sub-query to use the set operator "minus" to find the location_id
--inner join to join the sub-query and the locations table

/*2.	Display the category ID, category name, and the number of products in category 1, 2, and 5. In your result, 
display first the number of products in category 5, then category 1 and then 2.*/
SELECT a.category_id , b.category_name, COUNT(*) 
FROM products a 
INNER JOIN 
    (SELECT category_id, category_name 
     FROM product_categories 
     WHERE category_id 
     IN (1,2,5)
INTERSECT
SELECT category_id, category_name 
FROM product_categories) b 
ON a.category_id = b.category_id 
GROUP BY a.category_id, b.category_name 
ORDER BY COUNT(*) DESC;
--Use sub-query to find the category_id and category_name
-- inner join the sub-query and products table 

/*3.	Display product ID for products whose quantity in the inventory is less than to 5. 
(You are not allowed to use JOIN for this question.)*/
SELECT b.product_id 
FROM 
    (SELECT product_id, quantity 
     FROM inventories 
     WHERE quantity <5
     INTERSECT
     SELECT product_id, quantity 
     FROM inventories) b ;
--Use sub-query to find  the product_id and quantity of products
--Declare the sub-query as "b" and display the product_id of "b"

/*4.	We need a single report to display all warehouses and the state that they are located in and all states regardless of 
whether they have warehouses in them or not. (Use set operators in you answer.)*/
SELECT a.warehouse_name, b.state 
FROM warehouses a INNER JOIN locations b 
ON a.location_id = b.location_id 
UNION
SELECT b.warehouse_name, a.state 
FROM locations a LEFT JOIN warehouses b 
ON a.location_id = b.location_id 
WHERE b.warehouse_name IS NULL ;
--Use 2 different joins: inner join to display the warehouse_name and state from warehouses and locations table
--Use left join to display the state where the warehouse_name is null
--Use "union" to merge both joins together
