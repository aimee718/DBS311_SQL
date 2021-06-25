/*DBS311-LAB 3:Sub-Queries
  Eun Kyung (Aimee) Lee
  056342132
  10-09-2020
  Prof. Les King*/
 
/*1.    Write a SQL query to display the last name and hire date of all employees who were hired before the employee with ID 107
    got hired but after March 2016. Sort the result by the hire date and then employee ID. */
    SELECT last_name,hire_date
    FROM employees 
    WHERE employee_id < 107 AND hire_date >='16-03-01' 
    ORDER BY hire_date, employee_id ;
   
/*2.	Write a SQL query to display customer name and credit limit for customers with lowest credit limit. Sort the result by 
    customer ID.*/
    SELECT name, credit_limit 
    FROM customers 
    WHERE credit_limit =(
        SELECT MIN(credit_limit) 
        FROM customers)
    ORDER BY customer_id;
    --Use the subquery to find the lowest credit limit
/*3.	Write a SQL query to display the product ID, product name, and list price of the highest paid product(s) in each 
    category.  Sort by category ID and the product ID. */
    SELECT product_id, product_name, list_price 
    FROM products 
    WHERE (category_id, list_price) 
    IN (
        SELECT category_id, MAX(list_price) 
    FROM products GROUP BY category_id) 
    ORDER BY category_id, product_id;
    --Use the subquery to find the highest list price in each category
    
/*4.	Write a SQL query to display the category ID and the category name of the most expensive (highest list price) 
    product(s).*/
    SELECT a.category_id, a.category_name 
    FROM product_categories a LEFT JOIN products b ON a.category_id = b.category_id 
    WHERE b.list_price = (
        SELECT MAX(c.list_price) 
        FROM products c);
    -- Use the subquery to find the highest list price
    --Join theleft join to combine products and product_categories to display the category_id and category_name
    
/*5.	Write a SQL query to display product name and list price for products in category 1 which have the list price less 
    than the lowest list price in ANY category.  Sort the output by top list prices first and then by the product ID.*/   
    SELECT product_name, list_price, category_id 
    FROM products 
    WHERE list_price < ANY
        (SELECT MIN(list_price) 
         FROM products group by category_id )
         AND category_id = 1
    ORDER BY list_price DESC;
    --Find the lowest prices in each category in the sub query
    -- Use the ANY operator to compare the list price and the result of the subquery 
    
/*6.	Display the maximum price (list price) of the category(s) that has the lowest price product.*/
    SELECT MAX(a1.list_price) 
    FROM products a1 INNER JOIN
        (SELECT a.category_id FROM 
            (SELECT category_id, MIN(list_price) 
            FROM products GROUP BY category_id 
            ORDER BY MIN(list_price)) a 
        WHERE ROWNUM=1) b1 
    ON a1.category_id = b1.category_id;
    --Use subquery to find the category with the lowest price product
    --Use inner join to combine the result of the subquery with the products table to find the maximum price