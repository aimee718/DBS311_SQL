-- ***********************
-- Name: Eun kyung (Aimee) Lee
-- ID: 056342132
-- Date: 11-13-2020
-- Purpose: Lab 06 DBS311
-- ***********************
SET serveroutput ON;
--1.	Write a store procedure that gets an integer number n and calculates and displays its factorial.

CREATE OR REPLACE PROCEDURE FACTORIAL_TEST
    (
        M IN NUMBER
    )
AS  
    NUM1 NUMBER :=1;
    FUNCTION FACTORIAL(N NUMBER)                             
        RETURN NUMBER AS                                       
    BEGIN            
        IF N <= 1 THEN 
          RETURN 1;    
        ELSE           
          RETURN N*FACTORIAL(N-1);                             
        END IF;        
     END;   
     
BEGIN  
        WHILE(NUM1 <= M)
            LOOP
                DBMS_OUTPUT.PUT_LINE(num1||'! = ' || TO_CHAR(FACTORIAL(num1)));
                NUM1 := NUM1 + 1;
            END LOOP;   
END;
/  
EXECUTE FACTORIAL_TEST(10);
    
--2.	The company wants to calculate the employees’ annual salary:
--The first year of employment, the amount of salary is the base salary which is $10,000.
--Every year after that, the salary increases by 5%.
--Write a stored procedure named calculate_salary which gets an employee ID and for that employee calculates the salary based 
--on the number of years the employee has been working in the company.  (Use a loop construct to calculate the salary).

CREATE OR REPLACE PROCEDURE CALCULATE_SALARY
    (
        IN_ID IN NUMBER,
        OUT_FIRST OUT VARCHAR2,
        OUT_LAST OUT VARCHAR2,
        OUT_SALARY OUT NUMBER
    )
AS
    DYEAR NUMBER;
    NUM1 NUMBER := 1;
BEGIN
    SELECT FLOOR(MONTHS_BETWEEN((SELECT SYSDATE FROM DUAL),HIREDATE)/12), FIRSTNAME , LASTNAME 
        INTO DYEAR, OUT_FIRST,OUT_LAST
    FROM EMPLOYEE 
    WHERE EMPNO = IN_ID;
    WHILE(NUM1 <= DYEAR)
       LOOP
        OUT_SALARY := (NUM1*(10000*0.05)+10000);
        NUM1 := NUM1 + 1;
       END LOOP;
        DBMS_OUTPUT.PUT_LINE('First Name: '||OUT_FIRST );
        DBMS_OUTPUT.PUT_LINE('Last Name: '||OUT_LAST );
        DBMS_OUTPUT.PUT_LINE('Salary: $'||OUT_SALARY );
END;
/

DECLARE 
    VAR_FNAME VARCHAR2(20);
    VAR_LNAME VARCHAR2(20);
    VAR_SALARY NUMBER;
BEGIN
    CALCULATE_SALARY('000010', VAR_FNAME,VAR_LNAME, VAR_SALARY);
    CALCULATE_SALARY('000030', VAR_FNAME,VAR_LNAME, VAR_SALARY);
END;
/

--3.	Write a stored procedure named warehouses_report to print the warehouse ID, 
--warehouse name, and the city where the warehouse is located in the following format for all warehouses:

CREATE OR REPLACE PROCEDURE WAREHOUSES_REPORT
    (
        W_ID IN VARCHAR2,
        WAREHOUSE_ID OUT VARCHAR2,
        WAREHOUSE_NAME OUT VARCHAR2,
        CITY OUT VARCHAR2,
        STATE OUT VARCHAR2
    )
AS
    CNT NUMBER;
    NUM1 NUMBER := 1;
    ID0 NUMBER;
BEGIN
    SELECT MAX(WAREHOUSE_ID) INTO CNT FROM WAREHOUSES;

    WHILE(NUM1 <= CNT )
        LOOP
            SELECT A.WAREHOUSE_ID, A.WAREHOUSE_NAME, B.CITY, 
                CASE
                    WHEN B.STATE IS NULL THEN 'no state' 
                ELSE B.STATE
                END
            INTO WAREHOUSE_ID, WAREHOUSE_NAME, CITY, STATE
            FROM WAREHOUSES A LEFT JOIN LOCATIONS B ON A.LOCATION_ID = B.LOCATION_ID 
            WHERE WAREHOUSE_ID = NUM1;
             DBMS_OUTPUT.PUT_LINE('Warehouse ID: '||WAREHOUSE_ID );
             DBMS_OUTPUT.PUT_LINE('Warehouse Name: '||WAREHOUSE_NAME );
             DBMS_OUTPUT.PUT_LINE('City: '||CITY );
             DBMS_OUTPUT.PUT_LINE('State: '||STATE );
             NUM1 := NUM1 + 1;
          
       END LOOP;
       
END;
/

DECLARE
    VAR_ID VARCHAR2(20);
    VAR_NAME VARCHAR2(20);
    VAR_CITY VARCHAR2(20);
    VAR_STATE VARCHAR2(20);
BEGIN
    WAREHOUSES_REPORT('1',VAR_ID, VAR_NAME,VAR_CITY, VAR_STATE);
END;
/

