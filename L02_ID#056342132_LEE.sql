/*DBS311-LAB 2:Multi-Row Functions 
  Eun Kyung (Aimee) Lee
  056342132
  10-02-2020
  Prof. Les King*/

  /*1. For each job title display the number of employees. Sort the result according to  the number of employees.*/
        SELECT job_title, COUNT(job_title) as EMPLOYEES 
        FROM employees GROUP BY job_title 
        ORDER BY COUNT(job_title);
        --use count to calculate the number of employees in job title column.
        
  /*2. Display the highest, lowest, and average customer credit limits. Name these results high, low, and average. 
       Add a column that shows the difference between the highest and the lowest credit limits named "High and Low Difference". 
       Round the average to 2 decimal places.*/
       SELECT MAX(credit_limit) AS "high", MIN(credit_limit) AS "low", ROUND(AVG(credit_limit),2) AS "average", (MAX(credit_limit)-MIN(credit_limit)) AS "High and Low Difference" 
       FROM customers;
       -- the MAX, MIN, AVG commands calculates the max, min and average credit limit from the table.
       
  /*3. Display the order id, the total number of products, and the total order amount for orders with the total amount over $1,000,000.
       Sort the result based on total amount from the high to low values.*/
       SELECT a.order_id,SUM(b.quantity) AS total_items,SUM(b.quantity*b.unit_price) AS total_amount 
       FROM orders a LEFT JOIN order_items b ON a.order_id = b.order_id GROUP BY a.order_id HAVING SUM(b.quantity*b.unit_price) >1000000 
       ORDER BY total_amount DESC; 
       --Join the order_items and orders tables together to display the needed columns. Use order by command to rearrange the column.
       
  /*4. Display the warehouse id, warehouse name, and the total number of products for each warehouse. Sort the result according
       to the warehouse ID.*/
       SELECT a.warehouse_id, a.warehouse_name, SUM(b.quantity) AS total_products
       FROM warehouses a LEFT JOIN inventories b ON a.warehouse_id = b.warehouse_id GROUP BY a.warehouse_id, a.warehouse_name 
       ORDER BY a.warehouse_id;
       --Join the warehouses and inventories tables together to display the warehouse id, name and the sum of all the products.
       
  /*5. For each customer display customer number, customer full name, and the total number of orders issued by the customer.*/
       SELECT a.customer_id,a.name, NVL(SUM(c.quantity),0) AS "total number of orders" 
       FROM (customers a LEFT JOIN orders b ON a.customer_id = b.customer_id)LEFT JOIN order_items c ON b.order_id = c.order_id 
       WHERE a.name LIKE 'O%' AND a.name LIKE '%e%' AND a.name LIKE '%t' GROUP BY a.customer_id, a.name 
       ORDER BY "total number of orders" DESC;
       --Use the left join command to join order items, customers, and orders tables to display the needed data. 
       --Use nvl so that null results are displayed as 0, and use the like command to filter which names are shown.
       
  /*6. Write a SQL query to show the total and the average sale amount for each category. Round the average to 2 decimal places.*/
       SELECT c.category_id,SUM(b.quantity*b.unit_price) AS "total_amount", ROUND(AVG(b.quantity*b.unit_price),2) AS "average_amount" 
       FROM order_items b LEFT JOIN products c ON b.product_id = c.product_id GROUP BY c.category_id ;
       --Join order items and products tables together to display the needed data, and use the avg command to find the average of each sales amount.
       -- Use the round command to round the result of the avg calculation into 2 decimal places.
  
  
  
  
  
  
  
