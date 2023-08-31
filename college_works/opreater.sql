select * from customers;

SQL> select *from customers where dob is null;

   CUSTOMER_ID    FIRST_NAME    LAST_NAME    DOB         PHONE
______________ _____________ ____________ ______ _____________
             6 vijay         kanjariy               9265614280

SQL> select *from customers where phone is null;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB    PHONE 
______________ _____________ ____________ ___________ ________
             5 mehul         kanjariya    27-06-03

SQL> select nvl(phone,'1234567890') from customers;
   NVL(PHONE,'1234567890') 
__________________________
                9265614292
                9265614292
                9265614292
                9126561429
                1234567890
                9265614280

SQL> select nvl(dob,'01-jan-2023') as dt, nvl(phone,'1234567890') as phone  from customers; 
         DT         PHONE 
___________ _____________
22-02-03       9265614292
22-04-01       9265614292
24-05-03       9265614292
27-06-03       9126561429
27-06-03       1234567890
01-01-23       9265614280

SQL> select * from customers where customer_id > 3;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280
            
SQL> select * from customers where customer_id >= 3;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id < 3;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             1 rahul         kanjariya    22-02-03       9265614292
             2 jay           kanjariya    22-04-01       9265614292

SQL> select * from customers where customer_id != 3;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             1 rahul         kanjariya    22-02-03       9265614292
             2 jay           kanjariya    22-04-01       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id <> 3;
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             1 rahul         kanjariya    22-02-03       9265614292
             2 jay           kanjariya    22-04-01       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280

SQL> select * from customers where customer_id > any(2,3,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > any(3,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > any(2,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > some(2,3,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280
SQL> select * from customers where customer_id > some(2,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             3 hardik        kanjariya    24-05-03       9265614292
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > all(2,3,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > all(2,4);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280


SQL> select * from customers where customer_id > all(2,3);
   CUSTOMER_ID    FIRST_NAME    LAST_NAME         DOB         PHONE 
______________ _____________ ____________ ___________ _____________
             4 abhay         kanjariya    27-06-03       9126561429
             5 mehul         kanjariya    27-06-03
             6 vijay         kanjariy                    9265614280