--Question 1: Create a Table for Employee Information -----------



CREATE TABLE EmployeeInfo (
    employee_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    hire_date DATE NOT NULL,
    department VARCHAR2(50)
);

-------------- Question 1: Altering the EmployeeInfo Table ---------------
1. Add a new column named address of type VARCHAR2(200) to store employee addresses.

    ALTER TABLE EmployeeInfo ADD address varchar2(200);

2.Modify the email column to allow null values.

    ALTER TABLE EmployeeInfo MODIFY email VARCHAR2(100);

3. Rename the column phone_number to contact_number.

    ALTER TABLE EmployeeInfo RENAME COLUMN phone_number TO contact_number;

4. Delete the department column from the table.

    ALTER TABLE EmployeeInfo DROP COLUMN department;

5. Add a primary key constraint on the employee_id column.

    ALTER TABLE EmployeeInfo ADD CONSTRAINT pk_employee_id PRIMARY KEY (employee_id);

6. Remove the primary key constraint from the employee_id column.

    ALTER TABLE EmployeeInfo DROP CONSTRAINT pk_employee_id;

------- ADD Employeeinfo table record ---------

insert into EmployeeInfo(first_name,last_name,date_of_birth,email,phone_number,hire_date,department)
values ('rahul','kanjariya','22-feb-2003','rahul@gmail.com',9265614292,'16-mar-2023','mca');

-------------- Update Queries for EmployeeInfo Table: -----------------

1. You need to update the email address of an employee with employee_id 1. Set their email to 'newemail@example.com'

    UPDATE EmployeeInfo SET email = 'newemail@example.com' WHERE employee_id = 1;


2. An employee with employee_id 203 recently changed their last name to 'Johnson.' Update their last name in the EmployeeInfo table accordingly. Write the SQL query to make this change.

    UPDATE EmployeeInfo SET last_name = 'Johnson' WHERE employee_id = 203;

3. An employee with employee_id 305 has been promoted and their salary needs to be increased by $5,000.

    ---note: salary name column in not available employeeinfo table ---------

    UPDATE EmployeeInfo SET salary = salary + 5000 WHERE employee_id = 305;


4. Due to a system error, the hire date of an employee with employee_id 402 was recorded incorrectly as '2023-06-15' instead of '2023-06-01'. Write an SQL query to correct this hire date.

    UPDATE EmployeeInfo SET hire_date = TO_DATE('01-jun-2023') WHERE employee_id = 402;

5. You need to assign a new department to an employee with employee_id 507. Update their department to 'Marketing'. 

    UPDATE EmployeeInfo SET department = 'Marketing' WHERE employee_id = 507;


----------Question 2: Create a Table for Product Inventory -----------



CREATE TABLE ProductInventory (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    description VARCHAR2(200),
    price NUMBER(10, 2) NOT NULL,
    quantity_in_stock NUMBER(5) NOT NULL,
    manufacturer VARCHAR2(50),
    category VARCHAR2(50),
    date_added DATE NOT NULL
);

----------- Question 2: Altering the ProductInventory Table -------

1. Increase the precision of the price column to allow prices up to $9999.99.

    ALTER TABLE ProductInventory MODIFY price NUMBER(11, 2);

2. Add a new column named manufacturer_location of type VARCHAR2(100) to store the location of the manufacturer.

    ALTER TABLE ProductInventory ADD manufacturer_location VARCHAR2(100);


3. Rename the column category to product_category.

    ALTER TABLE ProductInventory RENAME COLUMN category TO product_category;

4. Set a default value of 0 for the quantity_in_stock column.

    ALTER TABLE ProductInventory MODIFY quantity_in_stock NUMBER(5) DEFAULT 0;

5. Add a primary key constraint on the product_id column.

    ALTER TABLE ProductInventory ADD CONSTRAINT pk_product_id PRIMARY KEY (product_id);

6. Remove the primary key constraint from the product_id column.

    ALTER TABLE ProductInventory DROP CONSTRAINT pk_product_id;


-------- Update Queries for ProductInventory Table: ---------------

1. The price of a product with product_id 101 has been increased by 10%. Write an SQL query to update the price accordingly.

    UPDATE ProductInventory SET price = price * 1.10 WHERE product_id = 101;

2. A product with product_id 205 has been discontinued, and its quantity in stock should be set to 0. Write an SQL query to update the quantity_in_stock for this product.

    UPDATE ProductInventory SET quantity_in_stock = 0 WHERE product_id = 205;

3. The manufacturer of a product with product_id 303 has changed their location. Update the manufacturer_location to 'New York' for this product.

    UPDATE ProductInventory SET manufacturer_location = 'New York' WHERE product_id = 303;

4. Update the category of products with names containing the word 'Electronics' to 'Electrical Appliances'.

    UPDATE ProductInventory SET product_category = 'Electrical Appliances' WHERE INSTR(product_name, 'Electronics');


5. A product with product_id 408 has been recalled and is no longer available. Update its quantity_in_stock to -1 to mark it as unavailable.

    UPDATE ProductInventory SET quantity_in_stock = -1 WHERE product_id = 408;



-----------Question 3: Create a Table for Library Books ----------

CREATE TABLE LibraryBooks (
    book_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR2(200) NOT NULL,
    author VARCHAR2(150) NOT NULL,
    publication_date DATE NOT NULL,
    isbn VARCHAR2(20),
    genre VARCHAR2(50),
    available_copies NUMBER(5),
    total_copies NUMBER(5)
);

--------- Question 3: Altering the LibraryBooks Table ------------


1. Add a new column named language of type VARCHAR2(50) to store the language of the book.

    ALTER TABLE LibraryBooksADD language VARCHAR2(50);

2. Modify the isbn column to allow null values.

    ALTER TABLE LibraryBooks MODIFY isbn VARCHAR2(20) NULL;

3. Rename the column available_copies to available_quantity.

    ALTER TABLE LibraryBooks RENAME COLUMN available_copies TO available_quantity;

4. Delete the total_copies column from the table.

    ALTER TABLE LibraryBooks DROP COLUMN total_copies;

5. Add a primary key constraint on the book_id column.

    ALTER TABLE LibraryBooks ADD CONSTRAINT pk_book_id PRIMARY KEY (book_id);

6. Remove the primary key constraint from the book_id column.

    ALTER TABLE LibraryBooks DROP CONSTRAINT pk_book_id;

--------------- Update Queries for LibraryBooks Table: --------------------------------

1. A book with book_id 101 has received a new edition, and its title needs to be updated to 'The New Book Title'. Write an SQL query to update the books title.

    UPDATE LibraryBooks SET title = 'The New Book Title' WHERE book_id = 101;

2.Correct the publication date of a book with book_id 203, which was mistakenly recorded as '2021-05-15' instead of '2021-05-01'.

    UPDATE LibraryBooks SET publication_date = TO_DATE('01-may-2021', 'YYYY-MM-DD') WHERE book_id = 203;

3. Update the genre of all books published before the year 2000 to 'Classics'.

    UPDATE LibraryBooks SET genre = 'Classics' WHERE EXTRACT(YEAR FROM publication_date) < 2000;


4. The total copies of a book with book_id 305 should be increased by 5 due to high demand. Write an SQL query to update the total_copies accordingly.

    UPDATE LibraryBooks SET total_copies = total_copies + 5 WHERE book_id = 305;


5. A book with book_id 402 has been removed from the librarys collection. Set its available_quantity to 0 to mark it as unavailable.

    UPDATE LibraryBooks SET available_quantity = 0 WHERE book_id = 402;



------------ Question 4: Create a Table for Customer Orders ----------

CREATE TABLE CustomerOrders (
    order_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    order_date DATE NOT NULL,
    total_amount NUMBER(10, 2) NOT NULL,
    shipping_address VARCHAR2(200),
    payment_method VARCHAR2(50),
    status VARCHAR2(20),
    tracking_number VARCHAR2(30)
);


---------- Question 4: Altering the CustomerOrders Table -----------

1. Add a new column named delivery_date of type DATE to store the expected delivery date of orders.

    ALTER TABLE CustomerOrders ADD delivery_date DATE;

2. Modify the shipping_address column to allow longer addresses (e.g., VARCHAR2(250)).

    ALTER TABLE CustomerOrders MODIFY shipping_address VARCHAR2(250);

3. Rename the column payment_method to payment_type.

    ALTER TABLE CustomerOrders RENAME COLUMN payment_method TO payment_type;

4. Set a default value of 'Processing' for the status column.

    ALTER TABLE CustomerOrders MODIFY status DEFAULT 'Processing';

5. Add a primary key constraint on the order_id column.

    ALTER TABLE CustomerOrders ADD CONSTRAINT pk_order_id PRIMARY KEY (order_id);

6. Remove the primary key constraint from the order_id column

    ALTER TABLE CustomerOrders DROP CONSTRAINT pk_order_id;

----------- Update Queries for CustomerOrders Table: ------------------

1. An order with order_id 101 has a new shipping address due to a customers recent move. Update the shipping_address for this order.

    UPDATE CustomerOrders SET shipping_address = 'New Address Here' WHERE order_id = 101;

2. Change the payment type of an order with order_id 203 from 'Credit Card' to 'PayPal'.

    UPDATE CustomerOrders SET payment_method = 'PayPal' WHERE order_id = 203;

3. An order with order_id 303 is delayed and will be delivered two days later. Update its delivery_date accordingly.

    UPDATE CustomerOrders SET order_date = order_date + 2 WHERE order_id = 303;

4. Update the total amount of an order with order_id 405 to $175.50, reflecting a change in the orders contents.

    UPDATE CustomerOrders SET total_amount = 175.50 WHERE order_id = 405;

5. An order with order_id 501 has been canceled. Change its status to 'Canceled' and remove the tracking number.

UPDATE CustomerOrders SET status = 'Canceled', tracking_number = NULL WHERE order_id = 501;

------------ Delete Queries for EmployeeInfo Table: ---------------

1. You need to remove an employee with employee_id 101 who has left the company. Write an SQL query to delete this employees record from the EmployeeInfo table.

    DELETE FROM EmployeeInfo WHERE employee_id = 101;

2. Delete all employees with a hire_date before '2020-01-01' who are no longer with the company. Write an SQL query to remove these records.

DELETE FROM EmployeeInfo WHERE hire_date < TO_DATE('01-jan-2020');


------------- Delete Queries for ProductInventory Table: ------------

1. A product with product_id 201 is discontinued and should be removed from the inventory. Write an SQL query to delete this products record from the ProductInventory table.
 
    DELETE FROM ProductInventory WHERE product_id = 201;

2. Delete all products with a price greater than $500.00 that are no longer in stock (quantity_in_stock = 0). Write an SQL query to remove these records.

    DELETE FROM ProductInventory WHERE price > 500.00 AND quantity_in_stock = 0;


---------------- Delete Queries for LibraryBooks Table: --------------

1. A book with book_id 102 has been permanently removed from the library's collection. Write an SQL query to delete this book's record from the LibraryBooks table.

    DELETE FROM LibraryBooks WHERE book_id = 102;


2. Remove all books published before the year 1990 that have less than 5 available copies. Write an SQL query to remove these records.

    DELETE FROM LibraryBooks WHERE EXTRACT(YEAR FROM publication_date) < 1990 AND available_quantity < 5;



------------- Delete Queries for CustomerOrders Table: ---------------

1. An order with order_id 301 was mistakenly duplicated in the system and needs to be deleted. Write an SQL query to remove one of the duplicate orders.

    DELETE FROM CustomerOrders WHERE order_id = 301;


2. Delete all orders with a total_amount less than $50.00 that are in 'Canceled' status. Write an SQL query to remove these records.

    DELETE FROM CustomerOrders WHERE total_amount < 50.00 AND status = 'Canceled';
