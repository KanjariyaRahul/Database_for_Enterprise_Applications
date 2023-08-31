SQL> CREATE TABLE purchases (
  2      customer_id INTEGER,
  3      product_name VARCHAR2(40)
  4  );

Table PURCHASES created.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (1, 'Maggie Noodles');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (2, 'Gipee');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (3, 'Top Roman Noodles');
1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (4, 'Yipee');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (1, 'ParleG');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (2, 'Oreo');

1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES (3, 'Bournbon');

1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES (3, 'Jim Jam');
1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES (1, 'Dairy Milk');
1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES (4, 'Kit Kat');
1 row inserted.
SQL> SELECT * FROM purchases;

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             1 ParleG
             2 Oreo
             3 Bournbon
             3 Jim Jam
             1 Dairy Milk
             4 Kit Kat

10 rows selected.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES ('', 'Dairy Milk');
1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES ('', '5 Star');
1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES ('', 'Gems');
1 row inserted.
SQL> INSERT INTO purchases (customer_id, product_name) VALUES ('', 'Munch');
1 row inserted.
SQL> select * from purchases;
   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             1 ParleG
             2 Oreo
             3 Bournbon
             3 Jim Jam
             1 Dairy Milk
             4 Kit Kat
               Dairy Milk
               5 Star
               Gems
               Munch


14 rows selected.


SQL> select distinct(customer_id) from purchases;
   CUSTOMER_ID
______________
             1
             2
             4

             3


SQL> SELECT DISTINCT customer_id FROM purchases;
   CUSTOMER_ID
______________
             1
             2
             4

             3


SQL> SELECT DISTINCT customer_id FROM purchases WHERE customer_id is not null;
   CUSTOMER_ID
______________
             1
             2
             4
             3


SQL> SELECT DISTINCT customer_id, product_name FROM purchases WHERE customer_id is not null;
   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             4 Yipee
             3 Top Roman Noodles
             3 Bournbon
             2 Oreo
             1 Dairy Milk
             4 Kit Kat
             2 Gipee
             3 Jim Jam
             1 ParleG

10 rows selected.


SQL> SELECT * FROM purchases WHERE customer_id is not null;
   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             1 ParleG
             2 Oreo
             3 Bournbon
             3 Jim Jam
             1 Dairy Milk
             4 Kit Kat

10 rows selected.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (3, 'Top Roman Noodles');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (4, 'Yipee');

1 row inserted.

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (1, 'ParleG');

1 row inserted.


SQL> SELECT DISTINCT customer_id, product_name FROM purchases WHERE customer_id is not null;

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             4 Yipee
             3 Top Roman Noodles
             3 Bournbon
             2 Oreo
             1 Dairy Milk
             4 Kit Kat
             2 Gipee
             3 Jim Jam
             1 ParleG

10 rows selected.


SQL> SELECT * FROM purchases WHERE customer_id is not null;

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             1 ParleG
             2 Oreo
             3 Bournbon
             3 Jim Jam
             1 Dairy Milk
             4 Kit Kat
             3 Top Roman Noodles
             4 Yipee
             1 ParleG

13 rows selected.


SQL> SELECT * FROM purchases WHERE product_name LIKE '_i%';
   CUSTOMER_ID    PRODUCT_NAME
______________ _______________
             2 Gipee
             4 Yipee
             3 Jim Jam
             4 Kit Kat
             4 Yipee


SQL> SELECT * FROM purchases WHERE product_name NOT LIKE '_i%';
   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             3 Top Roman Noodles
             1 ParleG
             2 Oreo
             3 Bournbon
             1 Dairy Milk
               Dairy Milk
               5 Star
               Gems
               Munch
             3 Top Roman Noodles
             1 ParleG

12 rows selected.
SQL> SELECT * FROM purchases WHERE customer_id IN(2,3,4);

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             2 Oreo
             3 Bournbon
             3 Jim Jam
             4 Kit Kat
             3 Top Roman Noodles
             4 Yipee

9 rows selected.


SQL> SELECT * FROM purchases WHERE customer_id NOT IN(2,3,4);
   CUSTOMER_ID      PRODUCT_NAME
______________ _________________
             1 Maggie Noodles
             1 ParleG
             1 Dairy Milk
             1 ParleG

SQL> SELECT * FROM purchases WHERE customer_id BETWEEN 2 AND 4;

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             2 Oreo
             3 Bournbon
             3 Jim Jam
             4 Kit Kat
             3 Top Roman Noodles
             4 Yipee

9 rows selected.

SQL> SELECT * FROM purchases WHERE customer_id NOT BETWEEN 2 AND 4;
   CUSTOMER_ID      PRODUCT_NAME
______________ _________________
             1 Maggie Noodles
             1 ParleG
             1 Dairy Milk
             1 ParleG

SQL> SELECT * FROM customers;

   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB           PHONE
______________ _____________ ____________ ___________ _______________
             1 John          Brown        01-01-65    800-555-1211
             2 Cynthia       Green        05-02-65    800-555-1212
             3 Steve         White        16-03-71    800-555-1213
             4 Gail          Black                    800-555-1214
             5 Doreen        Blue         20-05-70

SQL> SELECT SUBSTR(PHONE,1,4) FROM customers;

   SUBSTR(PHONE,1,4)
____________________
800-
800-
800-
800-



SQL> SELECT SUBSTR(PHONE,2,4) FROM customers;
   SUBSTR(PHONE,2,4)
____________________
00-5
00-5
00-5
00-5



SQL> SELECT SUBSTR(PHONE,1,4) FROM customers;
   SUBSTR(PHONE,1,4)
____________________
800-
800-
800-
800-



SQL> SELECT SUBSTR(PHONE,1,4) || '***-**' FROM customers;
   SUBSTR(PHONE,1,4)||'***-**'
______________________________
800-***-**
800-***-**
800-***-**
800-***-**
***-**


SQL> SELECT SUBSTR(PHONE,1,4) || '***-**' || substr(phone,11,2) FROM customers;
   SUBSTR(PHONE,1,4)||'***-**'||SUBSTR(PHONE,11,2)
__________________________________________________
800-***-**11
800-***-**12
800-***-**13
800-***-**14
***-**

SQL> SELECT SUBSTR(PHONE,1,4) || '***-**' || substr(phone,11,2) FROM customers where phone is not null;
   SUBSTR(PHONE,1,4)||'***-**'||SUBSTR(PHONE,11,2)
__________________________________________________
800-***-**11
800-***-**12
800-***-**13
800-***-**14

SQL> SELECT SUBSTR(PHONE,1,4) || 'yyy-zz' || substr(phone,11,2) FROM customers where phone is not null;
   SUBSTR(PHONE,1,4)||'YYY-ZZ'||SUBSTR(PHONE,11,2)
__________________________________________________
800-yyy-zz11
800-yyy-zz12
800-yyy-zz13
800-yyy-zz14

SQL> SELECT SUBSTR(PHONE,1,4) || '...-..' || substr(phone,11,2) FROM customers where phone is not null;
   SUBSTR(PHONE,1,4)||'...-..'||SUBSTR(PHONE,11,2)
__________________________________________________
800-...-..11
800-...-..12
800-...-..13
800-...-..14

SQL> SELECT SUBSTR(PHONE,1,4) || '+++-++' || substr(phone,11,2) FROM customers where phone is not null;
   SUBSTR(PHONE,1,4)||'+++-++'||SUBSTR(PHONE,11,2)
__________________________________________________
800-+++-++11
800-+++-++12
800-+++-++13
800-+++-++14

SQL> SELECT customer_id, first_name, last_name, dob, SUBSTR(PHONE,1,4) || '+++-++' || substr(phone,11,2) FROM customers where phone is not null;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB    SUBSTR(PHONE,1,4)||'+++-++'||SUBSTR(PHONE,11,2)
______________ _____________ ____________ ___________ __________________________________________________
             1 John          Brown        01-01-65    800-+++-++11
             2 Cynthia       Green        05-02-65    800-+++-++12
             3 Steve         White        16-03-71    800-+++-++13
             4 Gail          Black                    800-+++-++14

SQL> SELECT customer_id, first_name, last_name, dob, SUBSTR(PHONE,1,4) || '+++-++' || substr(phone,11,2) As PHONE FROM customers where phone
 is not null;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB           PHONE
______________ _____________ ____________ ___________ _______________
             1 John          Brown        01-01-65    800-+++-++11
             2 Cynthia       Green        05-02-65    800-+++-++12
             3 Steve         White        16-03-71    800-+++-++13
             4 Gail          Black                    800-+++-++14

SQL> SELECT * FROM purchases;

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             1 Maggie Noodles
             2 Gipee
             3 Top Roman Noodles
             4 Yipee
             1 ParleG
             2 Oreo
             3 Bournbon
             3 Jim Jam
             1 Dairy Milk
             4 Kit Kat
               Dairy Milk
               5 Star
               Gems
               Munch

   CUSTOMER_ID         PRODUCT_NAME
______________ ____________________
             3 Top Roman Noodles
             4 Yipee
             1 ParleG

17 rows selected.

SQL> SELECT * FROM purchases;

SQL> SELECT * FROM purchases WHERE customer_id = 1 AND product_name LIKE '%Yipee%';
no rows selected

SQL> SELECT * FROM purchases WHERE customer_id = 4 AND product_name LIKE '%Yipee%';
   CUSTOMER_ID    PRODUCT_NAME
______________ _______________
             4 Yipee
             4 Yipee

SQL> SELECT * FROM purchases WHERE customer_id = 4 OR product_name LIKE '%Yipee%';
   CUSTOMER_ID    PRODUCT_NAME
______________ _______________
             4 Yipee
             4 Kit Kat
             4 Yipee

SQL> INSERT INTO purchases (customer_id, product_name) VALUES (2, 'Yipee');

1 row inserted.

SQL> SELECT * FROM purchases WHERE customer_id = 4 OR product_name LIKE '%Yipee%';

   CUSTOMER_ID    PRODUCT_NAME
______________ _______________
             4 Yipee
             4 Kit Kat
             4 Yipee
             2 Yipee
