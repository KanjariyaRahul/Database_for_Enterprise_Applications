
CREATE TABLE StudentInfo (
    student_id INT PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);

------------ insert data in StudentInfo table --------------------------------

insert into StudentInfo VALUES ( 101,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 102,'Emily','Davis', '20-mar-1999','F','emily.davis@email.com',987-654-3210);
insert into StudentInfo VALUES ( 103,'Michael','Johnson', '10-jul-1997','M','johnson@email.com',555-123-4567);
insert into StudentInfo VALUES ( 104,'Sarah','Wilson', '05-jan-2000','F','sarah.wilson@email.com',789-987-6543);
insert into StudentInfo VALUES ( 105,'David','Brown', '30-sep-1996','M','david.brown@email.com',111-222-3333);
insert into StudentInfo VALUES ( 106,'Olivia','Lee', '18-dec-1999','F','olivia.lee@email.com',444-555-6666);
insert into StudentInfo VALUES ( 107,'Ethan','Martinez', '25-nov-1998','M','ethan.martinez@email.com',777-888-9999);
insert into StudentInfo VALUES ( 108,'Sophia','Taylor', '14-feb-2001','F','sophia.taylor@email.com',222-333-4444);
insert into StudentInfo VALUES ( 109,'Aiden',' Miller', '14-apr-1997','M','aiden.miller@email.com',666-777-8888);
insert into StudentInfo VALUES ( 110,'Emma','Anderson', '07-aug-2002','F','emma.anderson@email.com',333-444-5555);
insert into StudentInfo VALUES ( 111,'Benjamin','Harris', '22-jun-1995','M','benjamin.harris@email.com',888-999-0000);
insert into StudentInfo VALUES ( 112,'Mia','Johnson', '01-oct-1998','F','mia.johnson@email.com',999-000-1111);
insert into StudentInfo VALUES ( 113,'William','White', '12-mar-2003','M','william.white@email.com',000-111-2222);
insert into StudentInfo VALUES ( 114,'Ava','Robinson', '28-apr-1999','F','ava.robinson@email.com',111-222-3333);
insert into StudentInfo VALUES ( 115,'James','Turner', '05-dec-1996','M','james.turner@email.com',222-333-4444);

---------------------- ASCII and CHR Functions -------------------------

1. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the ASCII function to find the ASCII 
values of the first characters of both first and last names for each student.

    SELECT student_id, first_name, last_name,
        ASCII(SUBSTR(first_name, 1, 1)) AS first_name_ascii,
        ASCII(SUBSTR(last_name, 1, 1)) AS last_name_ascii
    FROM StudentInfo;

2. You want to find the ASCII value of the '@' symbol in each students email address. Write an SQL query to retrieve the student_id, 
email, and the ASCII value of '@' using the ASCII function.

    SELECT student_id, email, ASCII('@') AS ascii_value_of_at_symbol FROM StudentInfo;

3. Display the student_id and first_name from the StudentInfo table. Use the CHR function to create a new column containing a special 
character for each student, such as a heart symbol (♥).

    SELECT student_id,first_name, CHR(64) AS special_character FROM StudentInfo;

4. Calculate the sum of ASCII values for the characters in each students first name. Retrieve the student_id, first_name, and the calculated
sum using the ASCII function and aggregation.

        -- SELECT student_id, first_name, SUM(ASCII(SUBSTR(first_name, 1, 1))) AS sum_of_ascii_values FROM StudentInfo
        -- GROUP BY student_id, first_name;

5.  Retrieve the student_id, last_name, and the ASCII value of the last character in the last name for each student using the ASCII function.

    SELECT student_id, last_name, ASCII(SUBSTR(last_name, -1, 1)) AS ascii_value FROM StudentInfo;

------------------ CONCAT Function: --------------------- 

1. Create a query that retrieves the student_id, first_name, and last_name from the StudentInfo table. Use the CONCAT function to display the 
full names in the format "Last Name, First Name."

    SELECT student_id, CONCAT(CONCAT(first_name, ' '), last_name) AS full_name FROM StudentInfo;
    SELECT student_id, (first_name || '' || last_name) as full_name from StudentInfo;

2. You want to create email addresses for students based on their first names. Retrieve the student_id, first_name, and a new column with 
email addresses using the CONCAT function. Assume the email domain is '@example.com'.

    SELECT student_id, first_name, CONCAT(first_name, '@example.com') AS email FROM StudentInfo;


3. Display the student_id, email, and a new email address for each student created by concatenating their student_id with '@university.com' 
using the CONCAT function.

    SELECT student_id, email, CONCAT(student_id, '@university.com') AS new_email FROM StudentInfo;

4. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the CONCAT function to create a new column displaying the 
first_name followed by the last_name without a space.

    SELECT student_id, first_name, last_name, CONCAT(first_name, last_name) AS full_name FROM StudentInfo;

5. You need to generate usernames for students by combining their first names and the last two digits of their student_id. Retrieve the student_id,
first_name, and the generated usernames using the CONCAT function.

    SELECT student_id, first_name, CONCAT(SUBSTR(student_id, -2),first_name) AS username FROM StudentInfo;


------------------------ LOWER and UPPER Functions: -----------------------------

1. Display the student_id and email from the StudentInfo table. Convert the email addresses to lowercase using the LOWER function.

    SELECT student_id, LOWER(email) AS lowercase_email FROM StudentInfo;

2. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the UPPER function to display the full names in uppercase.

    SELECT student_id, UPPER(first_name ||' ' || last_name) AS uppercase_full_name FROM StudentInfo;
    SELECT student_id, UPPER(CONCAT(first_name, ' ', last_name)) AS uppercase_full_name FROM StudentInfo;

3. Calculate the total number of students with lowercase email addresses in the StudentInfo table using the LOWER function and COUNT aggregation.

    SELECT COUNT(*) AS total_lower_emails FROM StudentInfo WHERE email = LOWER(email);

4. Retrieve the student_id, email, and first_name. Convert the email addresses to uppercase and display them alongside the original first names using the UPPER function.

    SELECT student_id, email, first_name, UPPER(email) AS upper_case_email FROM StudentInfo;

5. You want to display the student_id, email, and last_name from the StudentInfo table. Convert the email addresses to uppercase and remove any 
   leading and trailing spaces using the UPPER function and TRIM function.

    SELECT student_id, UPPER(TRIM(email)) AS email, last_name FROM StudentInfo;

----------------- COUNT, AVG, MAX, MEDIAN, MIN, and SUM Functions: -------------------------

1. Calculate the total count of students in the StudentInfo table.

    SELECT COUNT(*) AS total_students FROM StudentInfo;

2. Determine the average age of students based on their date of birth and display it.

   --------

3. Find the maximum and minimum lengths of students  email addresses and display these values.

    SELECT MAX(LENGTH(email)) AS max_email_length, MIN(LENGTH(email)) AS min_email_length FROM StudentInfo;

4. Determine the sum of ASCII values of the first character of each students last name and display the result.

    SELECT SUM(ASCII(SUBSTR(last_name, 1, 1))) AS sum_ascii_values FROM StudentInfo;

---------------------------- TRIM Function: -----------------------------

1. You have a column named description in a table that contains text data. You want to remove any leading and trailing spaces 
   from the values in this column. Write an SQL query using the TRIM function to achieve this.

    ----------- 

2. Retrieve the names of all students in the StudentInfo table. Some names have extra spaces at the beginning and end. Write an 
   SQL query using the TRIM function to display the names without leading and trailing spaces.

   SELECT TRIM(first_name) AS trimmed_first_name, TRIM(last_name) AS trimmed_last_name FROM StudentInfo;


3. In a table that stores product names, you notice that some names have unnecessary spaces. Write an SQL query using the TRIM 
   function to remove all leading and trailing spaces from the product names.

     ------------ UPDATE tablename SET product_name = TRIM(product_name);


4. You need to list all cities from a table of addresses. However, some city names have leading spaces. Write an SQL query using the 
   TRIM function to display the city names without any leading spaces.

    -- SELECT TRIM(city) AS trimmed_city_name FROM tablename;

5. Retrieve a list of email addresses from the StudentInfo table. Some email addresses have extra spaces in them. Use the TRIM function 
   to remove any leading and trailing spaces from the email addresses in your query.

   SELECT TRIM(email) AS trimmed_email FROM StudentInfo;

--------------------------- LTRIM Function: ----------------------------

1. You have a column called product_code in a table where some values have extra spaces at the beginning. Write an SQL query using the LTRIM 
    function to remove leading spaces from the product codes.

    SELECT LTRIM(product_code) AS trimmed_product_code FROM tablename;


2. In a table containing book titles, some titles have leading spaces. Write an SQL query using the LTRIM function to display the book titles
   without any leading spaces.

   SELECT LTRIM(title) AS trimmed_title FROM tablename;

3. Retrieve a list of employee usernames from a table. Some usernames have leading spaces. Use the LTRIM function to remove these leading spaces in your query.

    SELECT LTRIM(username) AS trimmed_username FROM employees;

4. You are working with data from a sensor, and the sensor IDs sometimes have extra spaces at the beginning. Write an SQL query using the LTRIM 
   function to remove any leading spaces from the sensor IDs.

   SELECT LTRIM(sensor_id) AS trimmed_sensor_id FROM tablename;


5. In a table that stores product names, some names have leading spaces that need to be removed. Write an SQL query using the LTRIM function to
   clean the product names.

   UPDATE table_name SET product_name = LTRIM(product_name);

----------- RTRIM Function: ----------------

1. You are dealing with a table that contains URLs, and some of them have trailing spaces. Write an SQL query using the RTRIM function 
   to remove any trailing spaces from the URLs.

   SELECT RTRIM(url) AS trimmed_url FROM table_name;


2. In a table that stores file paths, some paths have trailing spaces that need to be eliminated. Write an SQL query using the RTRIM 
   function to display the file paths without trailing spaces.

   SELECT RTRIM(file_path) AS trimmed_file_path FROM table_name;


3. Retrieve a list of employee email addresses from a table. Some email addresses have trailing spaces. Use the RTRIM function to remove 
   these trailing spaces in your query.

   SELECT RTRIM(email) AS trimmed_email FROM employees;


4. You have a table with customer names, and some names have trailing spaces. Write an SQL query using the RTRIM function to display the
   customer names without any trailing spaces.

    SELECT RTRIM(customer_name) AS trimmed_customer_name FROM customers;

5. In a table containing postal codes, some codes have trailing spaces that need to be cleaned. Write an SQL query using the RTRIM function 
   to remove the trailing spaces from the postal codes.

   UPDATE table_name SET postal_code = RTRIM(postal_code);

---------------------- TRIM Function : -------------------------- 

1. You are dealing with a table that contains employee usernames. Some usernames have both leading and trailing spaces. Write an SQL query
   using the TRIM function to retrieve the employee_id and cleaned usernames for all employees.

    SELECT employee_id, TRIM(username) AS cleaned_username FROM employees;

2. In a table storing company names, you notice that some names have both leading and trailing spaces. Write an SQL query using the TRIM 
   function to display the unique company names without leading and trailing spaces.

   SELECT DISTINCT TRIM(company_name) AS cleaned_company_name FROM companies;

3. Retrieve a list of product codes from the product table. Some product codes have both leading and trailing spaces. Use the TRIM 
   function to clean the product codes in your query.

   SELECT TRIM(product_code) AS cleaned_product_code FROM product;

4. In a table containing postal codes, some codes have both leading and trailing spaces that need to be removed. Write an SQL query using 
   the TRIM function to clean the postal codes.

   UPDATE table_name SET postal_code = TRIM(postal_code);

5. You have a table with customer names, and some names have both leading and trailing spaces. Write an SQL query using the TRIM function 
   to display the customer names without any leading and trailing spaces.

   SELECT TRIM(customer_name) AS cleaned_customer_name FROM customers;

-------------- SUBSTR Function: ---------------------

1. Retrieve the first three characters of each students first name from the StudentInfo table using the SUBSTR function. Display the student_id 
   and the extracted substrings.

    SELECT student_id, SUBSTR(first_name, 1, 3) AS first_name_substring FROM StudentInfo;

2. You need to extract the last two characters from each students last name. Write an SQL query using the SUBSTR function to retrieve the 
   student_id, last_name, and the extracted substrings.

   SELECT student_id, last_name, SUBSTR(last_name, -2) AS last_name_substring FROM StudentInfo;

3. Display the student_id, email, and only the domain part of each students email address using the SUBSTR function. Assume that the domain 
   is the characters after the '@' symbol.

    SELECT student_id, email, SUBSTR(email, INSTR(email, '@') ) AS domain FROM StudentInfo;

4. Calculate the length of the first five characters in each students email address. Retrieve the student_id, email, and the length of the 
   substrings using the SUBSTR and LENGTH functions.

   SELECT student_id, email, LENGTH(SUBSTR(email, 1, 5)) AS length_of_first_five_characters FROM StudentInfo;


5. Retrieve the student_id, first_name, and the third to fifth characters of each students first name using the SUBSTR function.

    SELECT student_id, first_name, SUBSTR(first_name, 3, 3) AS extracted_substring FROM StudentInfo;


--------------------------- NVL Function: -----------------------------------

1. In the StudentInfo table, some students have missing values for their phone numbers (NULL). Use the NVL function to display
   'Not Available' for students with no phone number. Retrieve the student_id, first_name, and phone numbers.

    SELECT student_id, first_name, NVL(phone_number, 'Not Available') AS formatted_phone FROM StudentInfo;


2. Calculate the age of each student based on their date of birth, and for students with missing birthdates (NULL), display 
   'Age Unknown' using the NVL function. Retrieve the student_id, first_name, and the calculated age.

   SELECT student_id, first_name, NVL(TO_CHAR(ROUND(MONTHS_BETWEEN(CURRENT_DATE, date_of_birth) / 12)), 'Age Unknown') AS age FROM StudentInfo;

3. You want to categorize students as 'Male' or 'Female' based on their gender, but some have NULL values. Use the NVL function
   to categorize students with NULL gender values as 'Unknown'. Retrieve the student_id, first_name, and the categorized gender.

   SELECT student_id, first_name, NVL(gender, 'Unknown') AS categorized_gender FROM StudentInfo;

4. Display the student_id, email, and for students with NULL email addresses, show 'No Email' using the NVL function.

    SELECT student_id, NVL(email, 'No Email') AS formatted_email FROM StudentInfo;

5. You have a table that stores product prices, and some prices are missing (NULL). Use the NVL function to display 'Price Not Available'
   for products with no price. Retrieve the product names and prices.

   SELECT product_name, NVL(price, 'Price Not Available') AS formatted_price FROM table_name;

-------------------- NVL2 Function: --------------------------------------

1. You want to calculate the bonus for employees. If an employee's performance is 'Excellent,' the bonus is 1000; otherwise, it's 0.
   Use the NVL2 function to calculate the bonus. Retrieve the employee_id, first_name, performance, and the calculated bonus.

   SELECT employee_id, first_name, performance, NVL2(performance, 'Excellent', 0) AS bonus FROM employees;


2. In a table that stores order quantities, some quantities are missing (NULL). Use the NVL2 function to calculate the adjusted quantity.
   If the quantity is missing, assume its 0. Retrieve the order IDs and adjusted quantities.

   SELECT order_id, NVL2(quantity, quantity, 0) AS adjusted_quantity FROM order_quantities;


3. You need to categorize students based on their age. If a student is 18 or older, categorize them as 'Adult'; otherwise, categorize them as 
   'Minor.' Use the NVL2 function to categorize students with NULL birthdates as 'Unknown.' Retrieve the student_id, first_name, and the categorized age.

   SELECT student_id, first_name, NVL2( date_of_birth,
    CASE WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM date_of_birth) >= 18 THEN 'Adult' ELSE 'Minor' END, 'Unknown') AS age_category FROM StudentInfo;


4. Calculate the total score for students. If a students score is missing (NULL), use the NVL2 function to assume their score is 0. Retrieve the 
   student_id, first_name, and the total score.



5. In a table storing product quantities, some quantities are missing (NULL). Use the NVL2 function to calculate the adjusted quantity. If the quantity 
   is missing, assume its 1. Retrieve the product names and adjusted quantities.

    SELECT product_name, NVL2(quantity, quantity, 1) AS adjusted_quantity FROM product_table;

------------------- LENGTH Function: ----------------------

1. Calculate the length of each students first name in the StudentInfo table. Retrieve the student_id, first_name, and the length of the first names.

    SELECT student_id, first_name, LENGTH(first_name) AS first_name_length FROM StudentInfo;


2. You have a table that stores email addresses, and you want to find the length of each email address. Retrieve the email addresses and their lengths
   using the LENGTH function.

   SELECT email, LENGTH(email) AS email_length FROM StudentInfo;

3. Determine the number of characters in each students last name in the StudentInfo table. Retrieve the student_id, last_name, and the length of the last names.

    SELECT student_id, last_name, LENGTH(last_name) AS last_name_length FROM StudentInfo;


4. Calculate the length of each city name in a table that stores cities. Retrieve the city names and their lengths using the LENGTH function.

    SELECT city_name, LENGTH(city_name) AS city_name_length FROM city_table;

5. You want to find the length of each product name in a table. Retrieve the product names and their lengths using the LENGTH function.

    SELECT product_name, LENGTH(product_name) AS product_name_length FROM product_table;


---------------------- SOUNDEX Function (StudentInfo Table): ----------------------------------

1. You have a requirement to find students in the StudentInfo table who may have similar-sounding last names. Write an SQL query using the Soundex
   function to display the student_id, last_name, and Soundex codes for students with last names that sound alike.

   

2. Use the Soundex function in the StudentInfo table to calculate the Soundex codes for each students last name. Retrieve the student_id,
   last_name, and Soundex codes. 

3. In the StudentInfo table, some students may have last names that sound similar but are spelled differently. Write an SQL query with the 
   Soundex function to identify such students. Display the student_id, last_name, and Soundex codes.

4. You are tasked with finding potential duplicate student records in the StudentInfo table based on similar-sounding last names. Write an SQL 
query using the Soundex function to retrieve the student_id, last_name, and Soundex codes for students with last names that sound alike.
