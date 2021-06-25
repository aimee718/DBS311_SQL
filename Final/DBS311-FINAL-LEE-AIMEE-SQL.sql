-- ***********************
-- Name: Eun kyung (Aimee) Lee
-- Date: 12-11-2020
-- Purpose: Final Exam
-- ***********************

/*create table employee 
(EMPNO char(6), FIRSTNAME varchar(12), MIDINIT char(1), LASTNAME varchar(15), 
WORKDEPT char(3), PHONENO char(4), HIREDATE date, JOB char(8), EDLEVEL smallint, 
SEX char(1), BIRTHDATE date, SALARY decimal(9,2), BONUS decimal(9,2), COMM decimal(9,2));*/

/*create table staff 
(ID smallint, NAME varchar(9), DEPT smallint, JOB char(5), YEARS smallint, 
SALARY decimal(7,2), COMM decimal(7,2));*/

/*SELECT * FROM employee;
SELECT * FROM staff;
insert into employee values("000010","CHRISTINE","I","HAAS","A00","3978",19950101,"PRES    ",18,"F",19630824,+0152750.00,+0001000.00,+0004220.00);
insert into employee values("000020","MICHAEL","L","THOMPSON","B01","3476",20031010,"MANAGER ",18,"M",19780202,+0094250.00,+0000800.00,+0003300.00);
insert into employee values("000030","SALLY","A","KWAN","C01","4738",20050405,"MANAGER ",20,"F",19710511,+0098250.00,+0000800.00,+0003060.00);
insert into employee values("000050","JOHN","B","GEYER","E01","6789",19790817,"MANAGER ",16,"M",19550915,+0080175.00,+0000800.00,+0003214.00);
insert into employee values("000060","IRVING","F","STERN","D11","6423",20030914,"MANAGER ",16,"M",19750707,+0072250.00,+0000500.00,+0002580.00);
insert into employee values("000070","EVA","D","PULASKI","D21","7831",20050930,"MANAGER ",16,"F",20030526,+0096170.00,+0000700.00,+0002893.00);
insert into employee values("000090","EILEEN","W","HENDERSON","E11","5498",20000815,"MANAGER ",16,"F",19710515,+0089750.00,+0000600.00,+0002380.00);
insert into employee values("000100","THEODORE","Q","SPENSER","E21","0972",20000619,"MANAGER ",14,"M",19801218,+0086150.00,+0000500.00,+0002092.00);
insert into employee values("000110","VINCENZO","G","LUCCHESSI","A00","3490",19880516,"SALESREP",19,"M",19591105,+0066500.00,+0000900.00,+0003720.00);
insert into employee values("000120","SEAN"," ","O'CONNELL","A00","2167",19931205,"CLERK   ",14,"M",19721018,+0049250.00,+0000600.00,+0002340.00);
insert into employee values("000130","DELORES","M","QUINTANA","C01","4578",20010728,"ANALYST ",16,"F",19550915,+0073800.00,+0000500.00,+0001904.00);
insert into employee values("000140","HEATHER","A","NICHOLLS","C01","1793",20061215,"ANALYST ",18,"F",19760119,+0068420.00,+0000600.00,+0002274.00);
insert into employee values("000150","BRUCE"," ","ADAMSON","D11","4510",20020212,"DESIGNER",16,"M",19770517,+0055280.00,+0000500.00,+0002022.00);
insert into employee values("000160","ELIZABETH","R","PIANKA","D11","3782",20061011,"DESIGNER",17,"F",19800412,+0062250.00,+0000400.00,+0001780.00);
insert into employee values("000170","MASATOSHI","J","YOSHIMURA","D11","2890",19990915,"DESIGNER",16,"M",19810105,+0044680.00,+0000500.00,+0001974.00);
insert into employee values("000180","MARILYN","S","SCOUTTEN","D11","1682",20030707,"DESIGNER",17,"F",19790221,+0051340.00,+0000500.00,+0001707.00);
insert into employee values("000190","JAMES","H","WALKER","D11","2986",20040726,"DESIGNER",16,"M",19820625,+0050450.00,+0000400.00,+0001636.00);
insert into employee values("000200","DAVID"," ","BROWN","D11","4501",20020303,"DESIGNER",16,"M",19710529,+0057740.00,+0000600.00,+0002217.00);
insert into employee values("000210","WILLIAM","T","JONES","D11","0942",19980411,"DESIGNER",17,"M",20030223,+0068270.00,+0000400.00,+0001462.00);
insert into employee values("000220","JENNIFER","K","LUTZ","D11","0672",19980829,"DESIGNER",18,"F",19780319,+0049840.00,+0000600.00,+0002387.00);
insert into employee values("000230","JAMES","J","JEFFERSON","D21","2094",19961121,"CLERK   ",14,"M",19800530,+0042180.00,+0000400.00,+0001774.00);
insert into employee values("000240","SALVATORE","M","MARINO","D21","3780",20041205,"CLERK   ",17,"M",20020331,+0048760.00,+0000600.00,+0002301.00);
insert into employee values("000250","DANIEL","S","SMITH","D21","0961",19991030,"CLERK   ",15,"M",19691112,+0049180.00,+0000400.00,+0001534.00);
insert into employee values("000260","SYBIL","P","JOHNSON","D21","8953",20050911,"CLERK   ",16,"F",19761005,+0047250.00,+0000300.00,+0001380.00);
insert into employee values("000270","MARIA","L","PEREZ","D21","9001",20060930,"CLERK   ",15,"F",20030526,+0037380.00,+0000500.00,+0002190.00);
insert into employee values("000280","ETHEL","R","SCHNEIDER","E11","8997",19970324,"OPERATOR",17,"F",19760328,+0036250.00,+0000500.00,+0002100.00);
insert into employee values("000290","JOHN","R","PARKER","E11","4502",20060530,"OPERATOR",12,"M",19850709,+0035340.00,+0000300.00,+0001227.00);
insert into employee values("000300","PHILIP","X","SMITH","E11","2095",20020619,"OPERATOR",14,"M",19761027,+0037750.00,+0000400.00,+0001420.00);
insert into employee values("000310","MAUDE","F","SETRIGHT","E11","3332",19940912,"OPERATOR",12,"F",19610421,+0035900.00,+0000300.00,+0001272.00);
insert into employee values("000320","RAMLAL","V","MEHTA","E21","9990",19950707,"FIELDREP",16,"M",19620811,+0039950.00,+0000400.00,+0001596.00);
insert into employee values("000330","WING"," ","LEE","E21","2103",20060223,"FIELDREP",14,"M",19710718,+0045370.00,+0000500.00,+0002030.00);
insert into employee values("000340","JASON","R","GOUNOT","E21","5698",19770505,"FIELDREP",16,"M",19560517,+0043840.00,+0000500.00,+0001907.00);
insert into employee values("200010","DIAN","J","HEMMINGER","A00","3978",19950101,"SALESREP",18,"F",19730814,+0046500.00,+0001000.00,+0004220.00);
insert into employee values("200120","GREG"," ","ORLANDO","A00","2167",20020505,"CLERK   ",14,"M",19721018,+0039250.00,+0000600.00,+0002340.00);
insert into employee values("200140","KIM","N","NATZ","C01","1793",20061215,"ANALYST ",18,"F",19760119,+0068420.00,+0000600.00,+0002274.00);
insert into employee values("200170","KIYOSHI"," ","YAMAMOTO","D11","2890",20050915,"DESIGNER",16,"M",19810105,+0064680.00,+0000500.00,+0001974.00);
insert into employee values("200220","REBA","K","JOHN","D11","0672",20050829,"DESIGNER",18,"F",19780319,+0069840.00,+0000600.00,+0002387.00);
insert into employee values("200240","ROBERT","M","MONTEVERDE","D21","3780",20041205,"CLERK   ",17,"M",19840331,+0037760.00,+0000600.00,+0002301.00);
insert into employee values("200280","EILEEN","R","SCHWARTZ","E11","8997",19970324,"OPERATOR",17,"F",19660328,+0046250.00,+0000500.00,+0002100.00);
insert into employee values("200310","MICHELLE","F","SPRINGER","E11","3332",19940912,"OPERATOR",12,"F",19610421,+0035900.00,+0000300.00,+0001272.00);
insert into employee values("200330","HELENA"," ","WONG","E21","2103",20060223,"FIELDREP",14,"F",19710718,+0035370.00,+0000500.00,+0002030.00);
insert into employee values("200340","ROY","R","ALONZO","E21","5698",19970705,"FIELDREP",16,"M",19560517,+0031840.00,+0000500.00,+0001907.00);


insert into staff values (	10,'Sanders',20,'Mgr  ',7,+98357.50,null	);
insert into staff values (	20,'Pernal',20,'Sales',8,+78171.25,+00612.45	);
insert into staff values (	30,'Marenghi',38,'Mgr  ',5,+77506.75,null	);
insert into staff values (	40,'O'||'''Brien',38,'Sales',6,+78006.00,+00846.55	);
insert into staff values (	50,'Hanes',15,'Mgr  ',10,+80659.80,null	);
insert into staff values (	60,'Quigley',38,'Sales',null,+66808.30,+00650.25	);
insert into staff values (	70,'Rothman',15,'Sales',7,+76502.83,+01152.00	);
insert into staff values (	80,'James',20,'Clerk',5,+43504.60,+00128.20	);
insert into staff values (	90,'Koonitz',42,'Sales',6,+38001.75,+01386.70	);
insert into staff values (	100,'Plotz',42,'Mgr  ',7,+78352.80,null	);
insert into staff values (	110,'Ngan',15,'Clerk',5,+42508.20,+00206.60	);
insert into staff values (	120,'Naughton',38,'Clerk',null,+42954.75,+00180.00	);
insert into staff values (	130,'Yamaguchi',42,'Clerk',6,+40505.90,+00075.60	);
insert into staff values (	140,'Fraye',51,'Mgr  ',6,+91150.00,null	);
insert into staff values (	150,'Williams',51,'Sales',6,+79456.50,+00637.65	);
insert into staff values (	160,'Molinare',10,'Mgr  ',7,+82959.20,null	);
insert into staff values (	170,'Kermisch',15,'Clerk',4,+42258.50,+00110.10	);
insert into staff values (	180,'Abrahams',38,'Clerk',3,+37009.75,+00236.50	);
insert into staff values (	190,'Sneider',20,'Clerk',8,+34252.75,+00126.50	);
insert into staff values (	200,'Scoutten',42,'Clerk',null,+41508.60,+00084.20	);
insert into staff values (	210,'Lu',10,'Mgr  ',10,+90010.00,null	);
insert into staff values (	220,'Smith',51,'Sales',7,+87654.50,+00992.80	);
insert into staff values (	230,'Lundquist',51,'Clerk',3,+83369.80,+00189.65	);
insert into staff values (	240,'Daniels',10,'Mgr  ',5,+79260.25,null	);
insert into staff values (	250,'Wheeler',51,'Clerk',6,+74460.00,+00513.30	);
insert into staff values (	260,'Jones',10,'Mgr  ',12,+81234.00,null	);
insert into staff values (	270,'Lea',66,'Mgr  ',9,+88555.50,null	);
insert into staff values (	280,'Wilson',66,'Sales',9,+78674.50,+00811.50	);
insert into staff values (	290,'Quill',84,'Mgr  ',10,+89818.00,null	);
insert into staff values (	300,'Davis',84,'Sales',5,+65454.50,+00806.10	);
insert into staff values (	310,'Graham',66,'Sales',13,+71000.00,+00200.30	);
insert into staff values (	320,'Gonzales',66,'Sales',4,+76858.20,+00844.00	);
insert into staff values (	330,'Burke',66,'Clerk',1,+49988.00,+00055.50	);
insert into staff values (	340,'Edwards',84,'Sales',7,+67844.00,+01285.00	);
insert into staff values (	350,'Gafney',84,'Clerk',5,+43030.50,+00188.00	);*/


--PART A

--1.

SELECT workdept, job, empno,MAX(salary + bonus + comm) AS "total compensation" 
FROM employee 
GROUP BY workdept, job, empno 
ORDER BY workdept, job, empno, "total compensation" ;

--2.
SELECT DISTINCT a.* 
FROM 
    (SELECT initcap(lower(lAStname)) AS lname 
    FROM employee
UNION ALL
    SELECT initcap(lower(name)) AS lname FROM staff) a
ORDER BY a.lname;

--3.

SELECT a.empno, a.lAStname, b.name 
FROM employee a inner join staff b on CASt(a.empno AS SMALLINT) = b.id 
ORDER BY a.empno, a.lastname;

--4.

SELECT distinct a.* FROM 
    (SELECT lastname AS lname 
    FROM employee WHERE LOWER(lAStname) LIKE '%oo%' OR LOWER(lAStname) LIKE '%z%'
UNION ALL
    SELECT name AS lname 
    FROM staff WHERE LOWER(name) LIKE '%oo%' OR LOWER(name) LIKE '%z%' ) a 
ORDER BY a.lname;

--5.

SELECT a.workdept, a.cp_mgr, b.max_emp FROM
(SELECT empno,workdept, SUM(salary+bonus+comm)AS cp_mgr FROM employee WHERE job='MANAGER' GROUP BY empno, workdept) a inner join 
(SELECT workdept,max(cp_emp)AS max_emp FROM 
(SELECT empno,workdept, SUM(salary+bonus+comm) AS cp_emp FROM employee WHERE job !='MANAGER' GROUP BY empno,workdept ORDER BY workdept,empno desc) GROUP BY workdept) b on a.workdept = b.workdept 
WHERE (a.cp_mgr - b.max_emp) <10000;

--6.
SELECT c.* FROM
(SELECT a.lAStname, SUM(a.bonus+a.comm)AS "variable pay" FROM employee a GROUP BY a.lastname
UNION ALL
SELECT b.name AS "lastname", nvl(b.comm,0)AS "variable pay" FROM staff b )c
ORDER BY lower(c.lastname);

--7.
SET serveroutput ON;

CREATE OR REPLACE PROCEDURE empRating
(
    emp_No IN VARCHAR2,
    rating IN NUMBER,
    employeeno OUT VARCHAR2,
    prv_sal OUT NUMBER,
    prv_bonus OUT NUMBER,
    prv_comm OUT NUMBER,
    new_sal OUT NUMBER,
    new_bonus OUT NUMBER,
    new_comm OUT NUMBER
)
AS
BEGIN

    SELECT empno,salary, bonus,comm into employeeno, prv_sal,prv_bonus,prv_comm 
    FROM employee 
    WHERE empno=emp_No;
    
        IF employeeno IS NOT NULL THEN
            IF rating = 1 THEN
             UPDATE employee SET salary = salary+10000, bonus = bonus+300, comm= comm+(comm*0.05) 
             WHERE empno=emp_No;
            ELSIF rating = 2 THEN
                UPDATE employee SET salary= salary+5000, bonus= bonus+200, comm= comm+(comm*0.02) 
                WHERE empno=emp_No;
            ELSIF rating =3 THEN
                UPDATE employee SET salary=salary+2000 
                WHERE empno=emp_No;
            ELSE 
                 DBMS_OUTPUT.PUT_LINE('Non-valid rating');
            END IF;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Non-existent employee2');
        END IF;
    
    SELECT empno, salary,bonus,comm INTO employeeno,new_sal,new_bonus, new_comm 
    FROM employee 
    WHERE empno=emp_No;
    
        DBMS_OUTPUT.PUT_LINE('EMP       OLD SALARY      OLD BONUS       OLD COMM     NEW SALARY      NEW BONUS   NEW COMM ');
        DBMS_OUTPUT.PUT_LINE(employeeno ||'       '|| prv_sal||'         '|| prv_bonus||'           '|| prv_comm||'       '|| new_sal||'          '|| new_bonus||'       '|| new_comm);
    SELECT empno, salary,bonus,comm into employeeno,new_sal,new_bonus, new_comm 
    FROM employee 
    WHERE empno=emp_No;
    
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Non-existent employee');    
END;
/

DECLARE
    VAR_emp_no VARCHAR2(20);
    var_prv_sal NUMBER;
    var_prv_bonus NUMBER;
    VAR_prv_comm NUMBER;
    var_new_sal NUMBER;
    var_new_bonus NUMBER;
    var_new_comm NUMBER; 
BEGIN
    empRating('00044',1,var_emp_no,var_prv_sal,var_prv_bonus,var_prv_comm, var_new_sal, var_new_bonus,var_new_comm);
    
END;
/

--8.
CREATE OR REPLACE PROCEDURE empedu
(
    emp_No IN VARCHAR2,
    eLevel IN NUMBER,
    employeeNo OUT VARCHAR2,
    oldedu OUT NUMBER,
    edusymbol OUT VARCHAR2
)
AS
newedu NUMBER; 
begin
    IF eLevel <16 THEN
        DBMS_OUTPUT.PUT_LINE('Incorrect education level');
     ELSIF eLevel >25 THEN
        DBMS_OUTPUT.PUT_LINE('Incorrect education level');
    ELSE
        SELECT empno,edlevel INTO employeeno, oldedu 
        FROM employee 
        WHERE empno=emp_No;
        
        IF employeeno IS NOT NULL THEN
            IF eLevel >= oldedu THEN
                UPDATE employee SET edlevel =eLevel 
                WHERE empno=emp_No;
            else 
                DBMS_OUTPUT.PUT_LINE('Incorrect education level');
            end if;
        else
             DBMS_OUTPUT.PUT_LINE('Non-existent employee'); --20
        END IF;
        
        SELECT empno, eLevel into employeeno,newedu 
        FROM employee 
        WHERE empno=emp_No;
        
        IF newedu <=18 THEN
            edusymbol:= 'H';
        ELSIF newedu = 19 THEN
            edusymbol:='C';
        ELSIF newedu <=22 THEN
            edusymbol := 'U';
        ELSIF newedu <=24 THEN
            edusymbol := 'M';
        ELSE
            edusymbol := 'P';
        END IF;
        
            DBMS_OUTPUT.PUT_LINE('EMP       OLD EDUCATION     NEW EDUCATION ');
            DBMS_OUTPUT.PUT_LINE(employeeno ||'        '|| oldedu||'               '|| edusymbol);
    END IF;
    
    SELECT empno, eLevel INTO employeeno,newedu 
    FROM employee 
    WHERE empno=emp_No;   
    
    EXCEPTION        
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Non-existent employee');
    
END;
/

DECLARE
    VAR_emp_no VARCHAR2(20);
    var_oldedu NUMBER;
    var_edusymbol VARCHAR2(20);
BEGIN
    empedu('000100',25,var_emp_no,var_oldedu, var_edusymbol);
    
END;
/             
         
--9.
CREATE FUNCTION phone(emp_No IN VARCHAR2)
    RETURN VARCHAR2
    IS phone_No VARCHAR2(50);
    BEGIN
        SELECT CONCAT('416-123-',phoneno)INTO phone_No FROM employee WHERE empno=emp_No;
        RETURN(phone_No);
    END;
    /
         
 SELECT  phone('000010') FROM employee WHERE empno='000010';
 
 --10.
 
 ALTER TABLE employee ADD PHONENUM CHAR(14);      
------------------------
CREATE OR REPLACE PROCEDURE updatePhone
(   
    dept OUT VARCHAR2,
    emp_No OUT VARCHAR2,
    prv_phone OUT VARCHAR2,
    new_phone OUT VARCHAR2
)
AS
v_phonenum employee.phonenum%TYPE;
v_phoneno employee.phoneno%TYPE;
v_empno employee.empno%TYPE;

CURSOR c1 IS SELECT empno FROM employee WHERE substr(workdept,1,1)='E';
begin
  OPEN c1 ;
  LOOP
        FETCH c1 INTO v_empno;
        v_phonenum := phone(v_empno);
    UPDATE employee SET phonenum = v_phonenum 
   WHERE empno = v_empno;
   EXIT WHEN c1%NOTFOUND;
  END LOOP;
  CLOSE c1;
   
end;
/
DECLARE
    var_dept VARCHAR2(20);
    var_emp_No VARCHAR2(20);
    var_prv_phone VARCHAR2(20);
    var_new_phone VARCHAR2(20);
BEGIN
    updatephone(var_dept,var_emp_No, var_prv_phone, var_new_phone);
    
END;
/ 
