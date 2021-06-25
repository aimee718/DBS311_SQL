/*DBS311- Lab 1 : Single row functions
   Eun kyung (Aimee) Lee
   056342132
   09-25-2020
   Prof. Les King
  */
  
  /* 1. Write a query to display the tomorrow's date in the following format: Janurary 10th of year 2019*/
  select to_char(sysdate +1,'FMMonth DD "of" YYYY') as "tomorrow" from dual;
  /* 2. For each product in category 2,3, and 5, show product ID, product name, list price and the new list price increased by 
        2%. Display a new list price as a whole number.*/
  select product_ID, product_name, list_price, ROUND(list_price*1.02,0) as "new price", ROUND((list_price*1.02)-list_price,2) as "price difference" from products where CATEGORY_ID in(2,3,5)
  order by CATEGORY_ID;  
  /* 3. For employees whose manager ID is 2, write a query that displays the employee's full name and job title in the following
        format: Summer, Payne is Public Accountant.*/
  select concat(FIRST_NAME,concat(', ', concat(LAST_NAME, concat(' is ', JOB_TITLE)))) as "Employee Info" FROM employees where manager_id =2;      
  /* 4. For each employee hired before October 2016, display the employee's last name, hire date and calculate the number of 
        YEARS between TODAY and date the employee was hired. 
        Label the column Years worked.
        Order your results by the number of years employed. Round the number of years employed to the closest whole number.*/
  select LAST_NAME,FLOOR(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)/12)as "Years Worked" FROM employees WHERE HIRE_DATE >= '16-10-01';     
  /* 5. Display each employee's last name, hire date, and the review date, which is the first Tuesday after a year of service, 
        but only for those hired after Janurary 2016.
        Label the column REVIEW DAY.
        Format the dates to appear in the format like:
            TUESDAY, August the THIRTY-FIRST of year 2016.
        Sort by review date.*/
  select LAST_NAME, HIRE_DATE, concat(to_char(next_day(HIRE_DATE,'TUESDAY'), 'DAY'),concat(',' ,to_char(next_day(add_months(HIRE_DATE,12),'TUESDAY'), 'FMMonth "the" ddthsp  "of year" YYYY'))) as "review date" from employees where HIRE_DATE >= '16-01-01' 
  order by hire_date;
  /* 6. For all warehohuses, display warehouse id, warehouse name, city and state. For warehouses with the null value for the 
        state column, display "unnkonwn"*/
  select a.warehouse_id, a.warehouse_name, b.city, nvl(b.state, 'Unknown')as "state" from warehouses a left join locations b on a.location_id=b.location_id order by warehouse_id;