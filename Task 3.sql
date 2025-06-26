========================================================================================================
                                            TASK - 3
========================================================================================================

Schema:-  (Employee Table)

employee(emp_name, street, city)
works(emp_name, company_name, salary)
company(company_name, city)
manages(emp_name, manager_name)

========================================================================================================

CREATE TABLE EMPLOYEE (EMP_NAME VARCHAR2(20) PRIMARY KEY, STREET VARCHAR2(20), CITY VARCHAR2(20));
CREATE TABLE WORKS (EMP_NAME VARCHAR2(20) PRIMARY KEY, COMPANY_NAME VARCHAR2(20), SALARY NUMBER(10));
CREATE TABLE COMPANY (COMPANY_NAME VARCHAR2(20) PRIMARY KEY, CITY VARCHAR2(20));
CREATE TABLE MANAGES (EMP_NAME VARCHAR2(20) PRIMARY KEY, MANAGER_NAME VARCHAR2(20));

========================================================================================================
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('ARIA', '123 OAK ST', 'COOCHBEHAR');
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('ELON', '123 OAK ST', 'COOCHBEHAR');
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('WARREN', '456 PINE ST', 'KOLKATA');
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('STEVE', '789 MAPLE ST', 'DURGAPUR');
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('JONES', '101 PINE ST', 'DURGAPUR');
INSERT INTO EMPLOYEE (EMP_NAME, STREET, CITY) VALUES ('ETHAN', '456 PINE ST', 'COOCHBEHAR');
========================================================================================================
INSERT INTO WORKS (EMP_NAME, COMPANY_NAME, SALARY) VALUES ('ELON', 'FBC', 80000);
INSERT INTO WORKS (EMP_NAME, COMPANY_NAME, SALARY) VALUES ('WARREN', 'FBC', 75000);
INSERT INTO WORKS (EMP_NAME, COMPANY_NAME, SALARY) VALUES ('STEVE', 'SBC', 65000);
INSERT INTO WORKS (EMP_NAME, COMPANY_NAME, SALARY) VALUES ('JONES', 'TBC', 60000);
========================================================================================================
INSERT INTO COMPANY (COMPANY_NAME, CITY) VALUES ('FBC', 'COOCHBEHAR');
INSERT INTO COMPANY (COMPANY_NAME, CITY) VALUES ('SBC', 'KOLKATA');
INSERT INTO COMPANY (COMPANY_NAME, CITY) VALUES ('TBC', 'DURGAPUR');
========================================================================================================
INSERT INTO MANAGES (EMP_NAME, MANAGER_NAME) VALUES ('ELON', 'ARIA');
INSERT INTO MANAGES (EMP_NAME, MANAGER_NAME) VALUES ('WARREN', 'ARIA');
INSERT INTO MANAGES (EMP_NAME, MANAGER_NAME) VALUES ('STEVE', 'ETHAN');
INSERT INTO MANAGES (EMP_NAME, MANAGER_NAME) VALUES ('JONES', 'ETHAN');
========================================================================================================

                                              TABLE

========================================================================================================
SELECT * FROM EMPLOYEE;

EMP_NAME             STREET               CITY
-------------------- -------------------- --------------------
ARIA                 123 OAK ST           COOCHBEHAR
ELON                 123 OAK ST           COOCHBEHAR
ETHAN                456 PINE ST          COOCHBEHAR 
JONES                101 PINE ST          DURGAPUR
STEVE                789 MAPLE ST         DURGAPUR
WARREN               456 PINE ST          KOLKATA

SELECT * FROM WORKS;

EMP_NAME             COMPANY_NAME             SALARY
-------------------- -------------------- ----------
ELON                 FBC                       80000
JONES                TBC                       60000
STEVE                SBC                       65000
WARREN               FBC                       75000

SELECT * FROM COMPANY;

COMPANY_NAME         CITY
-------------------- --------------------
FBC                  COOCHBEHAR
SBC                  KOLKATA
TBC                  DURGAPUR

SELECT * FROM MANAGES;

EMP_NAME             MANAGER_NAME
-------------------- --------------------
ELON                 ARIA
JONES                ETHAN
STEVE                ETHAN
WARREN               ARIA

========================================================================================================

                                       Solving some queries:-

SELECT * FROM EMPLOYEE;

EMP_NAME             STREET               CITY
-------------------- -------------------- --------------------
ARIA                 123 OAK ST           COOCHBEHAR
ELON                 123 OAK ST           COOCHBEHAR
WARREN               456 PINE ST          KOLKATA
STEVE                789 MAPLE ST         DURGAPUR
JONES                101 PINE ST          DURGAPUR
ETHAN                456 PINE ST          COOCHBEHAR

6 rows selected.
========================================================================================================

SELECT EMP_NAME, CITY FROM EMPLOYEE WHERE CITY = 'KOLKATA';

EMP_NAME             CITY
-------------------- --------------------
WARREN               KOLKATA

========================================================================================================

SELECT * FROM WORKS WHERE COMPANY_NAME = 'FBC';

EMP_NAME             COMPANY_NAME             SALARY
-------------------- -------------------- ----------
ELON                 FBC                       80000
WARREN               FBC                       75000

========================================================================================================

SELECT EMP_NAME, SALARY FROM WORKS WHERE SALARY > 65000;

EMP_NAME                 SALARY
-------------------- ----------
ELON                      80000
WARREN                    75000

========================================================================================================

SELECT * FROM WORKS WHERE COMPANY_NAME = 'FBC' OR SALARY < 70000;

EMP_NAME             COMPANY_NAME             SALARY
-------------------- -------------------- ----------
ELON                 FBC                       80000
WARREN               FBC                       75000
STEVE                SBC                       65000
JONES                TBC                       60000

========================================================================================================

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE 'E%';

EMP_NAME             STREET               CITY
-------------------- -------------------- --------------------
ELON                 123 OAK ST           COOCHBEHAR
ETHAN                456 PINE ST          COOCHBEHAR

========================================================================================================

  1  SELECT E.EMP_NAME, E.CITY, W.COMPANY_NAME
  2  FROM EMPLOYEE E
  3  JOIN WORKS W ON E.EMP_NAME = W.EMP_NAME
  4  WHERE E.CITY = 'COOCHBEHAR' AND W.COMPANY_NAME = 'FBC';

EMP_NAME             CITY                 COMPANY_NAME
-------------------- -------------------- --------------------
ELON                 COOCHBEHAR           FBC

========================================================================================================

  1  SELECT * FROM COMPANY
  2  WHERE CITY = 'KOLKATA';

COMPANY_NAME         CITY
-------------------- --------------------
SBC                  KOLKATA

========================================================================================================

  1  SELECT * FROM WORKS
  2  WHERE SALARY BETWEEN 60000 AND 75000;

EMP_NAME             COMPANY_NAME             SALARY
-------------------- -------------------- ----------
WARREN               FBC                       75000
STEVE                SBC                       65000
JONES                TBC                       60000

========================================================================================================

SELECT * FROM WORKS ORDER BY SALARY DESC LIMIT 2;

EMP_NAME             COMPANY_NAME             SALARY
-------------------- -------------------- ----------
ELON                 FBC                       80000
WARREN               FBC                       75000

========================================================================================================

  1  SELECT E.EMP_NAME AS EMPLOYEE, M.MANAGER_NAME
  2  FROM EMPLOYEE E
  3  JOIN MANAGES M ON E.EMP_NAME = M.EMP_NAME;

EMPLOYEE             MANAGER_NAME
-------------------- --------------------
ELON                 ARIA
WARREN               ARIA
STEVE                ETHAN
JONES                ETHAN

========================================================================================================














