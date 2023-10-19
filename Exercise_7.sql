
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

2. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the UPPER function to display the full names in uppercase.

3. Calculate the total number of students with lowercase email addresses in the StudentInfo table using the LOWER function and COUNT aggregation.

4. Retrieve the student_id, email, and first_name. Convert the email addresses to uppercase and display them alongside the original first names using the UPPER function.

5. You want to display the student_id, email, and last_name from the StudentInfo table. Convert the email addresses to uppercase and remove any leading and trailing spaces using the UPPER function and TRIM function.
