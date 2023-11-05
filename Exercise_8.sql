
1. Create the Employees Table:
Write an SQL query to create the "Employees" table with the following columns:
EmployeeID (integer)
FirstName (text)
LastName (text)
Department (text)
Salary (decimal)

---------------------------- table created --------------------------

CREATE TABLE Employees (
    EmployeeID INT,
    FirstName TEXT,
    LastName TEXT,
    Department TEXT,
    Salary DECIMAL(10, 2)
);

---------------------------- record inserted --------------------------

INSERT INTO Employees VALUES (1, 'John', 'Doe', 'HR', 50000.00);

INSERT INTO Employees VALUES (2, 'Jane', 'Smith', 'HR', 55000.00);

INSERT INTO Employees VALUES (3, 'Bob', 'Johnson', 'IT', 60000.00);

INSERT INTO Employees VALUES (4, 'Alice', 'Williams', 'IT', 65000.00);

INSERT INTO Employees VALUES (5, 'David', 'Brown', 'IT', 62000.00);

INSERT INTO Employees VALUES (6, 'Mary', 'Davis', 'Finance', 58000.00);

INSERT INTO Employees VALUES (7, 'Tom', 'Wilson', 'Finance', 60000.00);

INSERT INTO Employees VALUES (8, 'Linda', 'Lee', 'Marketing', 54000.00);

INSERT INTO Employees VALUES (9, 'Mike', 'Clark', 'Marketing', 56000.00);

INSERT INTO Employees VALUES (10, 'Emily', 'Thomas', 'IT', 63000.00);

INSERT INTO Employees VALUES (11, 'Peter', 'Evans', 'Finance', 59000.00);

INSERT INTO Employees VALUES (12, 'Sara', 'Martin', 'Marketing', 55000.00);

INSERT INTO Employees VALUES (13, 'Chris', 'Roberts', 'IT', 61000.00);

INSERT INTO Employees VALUES (14, 'Laura', 'Garcia', 'HR', 52000.00);

INSERT INTO Employees VALUES (15, 'Mark', 'Harris', 'Finance', 57000.00);

---------------------------- GROUP BY For the Employees Table --------------------------

1. Find the average salary for all employees.

    SELECT AVG(Salary) AS AverageSalary FROM Employees;

2. List the departments and the total number of employees in each department.

    SELECT Department, COUNT(*) AS NumberOfEmployees FROM Employees GROUP BY Department;

3. Calculate the total salary for the HR department.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees WHERE Department = 'HR';

4. Find the department with the highest average salary.

    SELECT Department, AVG(Salary) AS AverageSalary FROM Employees GROUP BY Department ORDER BY AverageSalary DESC ;

5. List the departments and the maximum salary in each department.

    SELECT Department, MAX(Salary) AS MaxSalary FROM Employees GROUP BY Department;

6. Count the number of employees in the Marketing department.

    SELECT COUNT(*) AS NumberOfEmployees FROM Employees WHERE Department = 'Marketing';

7. Find the employee with the highest salary.

    SELECT * FROM Employees ORDER BY Salary DESC ;

8. List the employees in the IT department in alphabetical order by last name.

    SELECT * FROM Employees WHERE Department = 'IT' ORDER BY  FirstName, LastName;

---------------------------- GROUP BY - HAVING CLAUSE For the Employees Table --------------------------

1. Find the average salary for departments with more than 2 employees.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department HAVING COUNT(*) > 2;

2. List the departments with at least 3 employees and calculate the total salary for each.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department HAVING COUNT(*) >= 3;

3. Find the department with the highest average salary for employees earning more than $55,000.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees WHERE Salary > 55000 GROUP BY Department ORDER BY AvgSalary DESC;

4. Calculate the total salary for departments where the minimum salary is less than $55,000.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department HAVING MIN(Salary) < 55000;

5. List the departments with an average salary above $58,000 and more than 2 employees.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department HAVING AVG(Salary) > 58000 AND COUNT(*) > 2;

6. Find the department with the highest total salary for employees with salaries between $50,000 and $60,000.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees WHERE Salary BETWEEN 50000 AND 60000 GROUP BY Department ORDER BY TotalSalary DESC;

7. List the departments with exactly 2 employees and find the maximum salary in each.

    SELECT Department, MAX(Salary) AS MaxSalary FROM Employees GROUP BY Department HAVING COUNT(*) = 2;

8. Calculate the average salary for the Marketing department and list it only if its above $55,000.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees WHERE Department = 'Marketing' GROUP BY Department HAVING AvgSalary > 55000;

---------------------------- GROUP BY - HAVING AND ORDER BY For the Employees Table --------------------------

1. List the departments with at least 2 employees, calculate the total salary for each, and order them by total salary in descending order.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department HAVING COUNT(EmployeeID) >= 2 ORDER BY TotalSalary DESC;

2. Find the department with the highest average salary for employees earning more than $55,000, and order the results by the average salary in descending order.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees WHERE Salary > 55000 GROUP BY Department ORDER BY AvgSalary DESC;

3. List the departments and the maximum salary in each department, and order them by the maximum salary in ascending order.

    SELECT Department, MAX(Salary) AS MaxSalary FROM Employees GROUP BY Department ORDER BY MaxSalary;

4. Find the department with the lowest average salary for employees with salaries less than $60,000 and order the results by the average salary in ascending order.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees WHERE Salary < 60000 GROUP BY Department ORDER BY AvgSalary;

5. Calculate the total salary for departments where the minimum salary is less than $55,000, and order the results by total salary in descending order.

    SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department HAVING MIN(Salary) < 55000 ORDER BY TotalSalary DESC;

6. List the departments with more than 3 employees, find the average salary in each department, and order them by the average salary in descending order.

    SELECT Department, AVG(Salary) AS AvgSalary FROM Employees GROUP BY Department HAVING COUNT(EmployeeID) > 3 ORDER BY AvgSalary DESC;

7. Find the departments with exactly 2 employees, list the employees in each department, and order the results by department and then by employee last name in ascending order.

    SELECT Department, FirstName, LastName FROM Employees
    WHERE Department IN ( SELECT Department FROM Employees GROUP BY Department HAVING COUNT(EmployeeID) = 2)
    ORDER BY Department, LastName;

8. List the employees in the IT department in alphabetical order by last name, find the average salary in that department, and order the results by average salary in ascending order.

    SELECT FirstName, LastName, AVG(Salary) AS AvgSalary FROM Employees WHERE Department = 'IT' GROUP BY FirstName, LastName ORDER BY LastName, AvgSalary;


=======================================================================================

2.Create the Products Table:
Write an SQL query to create the "Products" table with the following columns:
ProductID (integer)
ProductName (text)
Category (text)
Price (decimal)
StockQuantity (integer)

---------------------------- table created -------------------------- 

CREATE TABLE Products (
    ProductID INT,
    ProductName TEXT,
    Category TEXT,
    Price DECIMAL(10, 2),
    StockQuantity INT
);

---------------------------- record inserted --------------------------

INSERT INTO Products VALUES (1, 'Laptop', 'Electronics', 800.00, 10);

INSERT INTO Products VALUES (2, 'Smartphone', 'Electronics', 500.00, 15);

INSERT INTO Products VALUES (3, 'Desk Chair', 'Furniture', 150.00, 20);

INSERT INTO Products VALUES (4, 'Coffee Table', 'Furniture', 200.00, 10);

INSERT INTO Products VALUES (5, 'Printer', 'Electronics', 100.00, 5);

INSERT INTO Products VALUES (6, 'Sofa', 'Furniture', 450.00, 12);

INSERT INTO Products VALUES (7, 'T-shirt', 'Clothing', 20.00, 50);

INSERT INTO Products VALUES (8, 'Jeans', 'Clothing', 40.00, 30);

INSERT INTO Products VALUES (9, 'Microwave', 'Appliances', 120.00, 8);

INSERT INTO Products VALUES (10, 'Refrigerator', 'Appliances', 600.00, 5);

INSERT INTO Products VALUES (11, 'Dining Table', 'Furniture', 350.00, 8);

INSERT INTO Products VALUES (12, 'Headphones', 'Electronics', 60.00, 25);

INSERT INTO Products VALUES (13, 'Shoes', 'Clothing', 70.00, 40);

INSERT INTO Products VALUES (14, 'Blender', 'Appliances', 50.00, 10);

INSERT INTO Products VALUES (15, 'TV', 'Electronics', 900.00, 6);

---------------------------- GROUP BY For the Products Table --------------------------

1. Calculate the average price for products in the "Electronics" category.

    SELECT AVG(Price) AS AveragePrice FROM Products WHERE Category = 'Electronics';

2. List the categories and the total number of products in each category.

    SELECT Category, COUNT(*) AS TotalProducts FROM Products GROUP BY Category;

3. Find the category with the highest average price.

    SELECT Category, AVG(Price) AS AveragePrice FROM Products GROUP BY Category ORDER BY AveragePrice DESC ;

4. Calculate the total stock quantity for the "Furniture" category.

    SELECT SUM(StockQuantity) AS TotalStockQuantity FROM Products WHERE Category = 'Furniture'; 

5. List the categories and the minimum price in each category.

    SELECT Category, MIN(Price) AS MinimumPrice FROM Products GROUP BY Category;

6. Count the number of products in the "Clothing" category.

    SELECT COUNT(*) AS NumberOfProducts FROM Products WHERE Category = 'Clothing';

7. Find the product with the highest price.

    SELECT ProductName, Price FROM Products ORDER BY Price DESC;

8. List the products in descending order of stock quantity and within the same quantity, in alphabetical order of product name.

    SELECT ProductName, StockQuantity FROM Products ORDER BY StockQuantity DESC, ProductName;

---------------------------- GROUP BY - HAVING CLAUSE For the Products Table --------------------------

1. Calculate the average price for products with a stock quantity greater than 10.

    SELECT AVG(Price) AS AvgPrice FROM Products WHERE StockQuantity > 10;

2. List the categories with at least 5 products and find the maximum price in each.

    SELECT Category, MAX(Price) AS MaxPrice FROM Products GROUP BY Category HAVING COUNT(*) >= 5;

3. Find the category with the highest average price for products costing less than $100.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products WHERE Price < 100 GROUP BY Category ORDER BY AvgPrice DESC;

4. Calculate the total stock quantity for categories where the minimum price is above $30.

    SELECT Category, SUM(StockQuantity) AS TotalStockQuantity FROM Products GROUP BY Category HAVING MIN(Price) > 30;

5. List the categories with an average price below $70 and at least 3 products.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products GROUP BY Category HAVING AVG(Price) < 70 AND COUNT(*) >= 3;

6. Find the category with the lowest total stock quantity for products with prices above $50.

    SELECT Category, SUM(StockQuantity) AS TotalStockQuantity FROM Products WHERE Price > 50 GROUP BY Category ORDER BY TotalStockQuantity;

7. List the categories with exactly 4 products and find the minimum price in each.

    SELECT Category, MIN(Price) AS MinPrice FROM Products GROUP BY Category HAVING COUNT(*) = 4;

8. Calculate the average price for the Electronics category and list it only if its below $75.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products WHERE Category = 'Electronics' GROUP BY Category HAVING AvgPrice < 75;

---------------------------- GROUP BY - HAVING AND ORDER BY For the Products Table --------------------------

1. List the categories with at least 5 products, find the minimum price in each category, and order the results
   by category in ascending order.

    SELECT Category, MIN(Price) AS MinPrice FROM Products GROUP BY Category HAVING COUNT(ProductID) >= 5 ORDER BY Category;

2. Find the category with the highest average price for products costing less than $100 and order the results by
   the average price in descending order.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products WHERE Price < 100 GROUP BY Category ORDER BY AvgPrice DESC;

3. Calculate the total stock quantity for categories where the minimum price is above $30 and order the results by
   total stock quantity in descending order.

    SELECT Category, SUM(StockQuantity) AS TotalStock FROM Products GROUP BY Category HAVING MIN(Price) > 30 ORDER BY TotalStock DESC;

4. List the categories and the maximum price in each category, find the category with the lowest maximum price, and
   order the results by category in ascending order.

    SELECT Category, MAX(Price) AS MaxPrice FROM Products GROUP BY Category ORDER BY MaxPrice ASC, Category ;

5. Find the categories with an average price below $70 and at least 3 products, and order the results by the average
   price in ascending order.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products GROUP BY Category HAVING COUNT(ProductID) >= 3 AND AVG(Price) < 70 ORDER BY AvgPrice ;

6. Calculate the average price for products with a stock quantity greater than 10, and order the results by average
   price in descending order.

    SELECT Category, AVG(Price) AS AvgPrice FROM Products WHERE StockQuantity > 10 GROUP BY Category ORDER BY AvgPrice DESC;

7. List the categories with exactly 4 products, find the maximum price in each category, and order the results by
   category in descending order.

    SELECT Category, MAX(Price) AS MaxPrice FROM Products GROUP BY Category HAVING COUNT(ProductID) = 4 ORDER BY Category DESC;

8. Find the category with the highest total stock quantity for products with prices above $50 and order the results
   by the total stock quantity in descending order.

    SELECT Category, SUM(StockQuantity) AS TotalStock FROM Products WHERE Price > 50 GROUP BY Category ORDER BY TotalStock DESC;

=======================================================================================
 
3. Create the Orders Table:
Write an SQL query to create the "Orders" table with the following columns:

OrderID (integer)
CustomerName (text)
OrderDate (date)
TotalAmount (decimal)

---------------------------- table created --------------------------

CREATE TABLE Orders (
    OrderID INT,
    CustomerName TEXT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

---------------------------- record inserted --------------------------

INSERT INTO Orders  VALUES (1, 'John Smith', '15-oct-2023', 300.00);

INSERT INTO Orders  VALUES (2, 'Jane Doe', '16-oct-2023', 450.00);

INSERT INTO Orders  VALUES (3, 'Bob Johnson', '17-oct-2023', 600.00);

INSERT INTO Orders  VALUES (4, 'Alice Williams', '18-oct-2023', 750.00);

INSERT INTO Orders  VALUES (5, 'David Brown', '19-oct-2023', 400.00);

INSERT INTO Orders  VALUES (6, 'Mary Davis', '20-oct-2023', 550.00);

INSERT INTO Orders  VALUES (7, 'Tom Wilson', '21-oct-2023', 700.00);

INSERT INTO Orders  VALUES (8, 'Linda Lee', '22-oct-2023', 350.00);

INSERT INTO Orders  VALUES (9, 'Mike Clark', '23-oct-2023', 900.00);

INSERT INTO Orders  VALUES (10, 'Emily Thomas', '24-oct-2023', 200.00);

INSERT INTO Orders  VALUES (11, 'Peter Evans', '25-oct-2023', 450.00);

INSERT INTO Orders  VALUES (12, 'Sara Martin', '26-oct-2023', 800.00);

INSERT INTO Orders  VALUES (13, 'Chris Roberts', '27-oct-2023', 350.00);

INSERT INTO Orders  VALUES (14, 'Laura Garcia', '28-oct-2023', 600.00);

INSERT INTO Orders  VALUES (15, 'Mark Harris', '29-oct-2023', 950.00);

---------------------------- GROUP BY For the Orders Table --------------------------

1. Calculate the total amount spent by each customer and list the customers in alphabetical order by name.

    SELECT CustomerName, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerName ORDER BY CustomerName;

2. Find the customer who spent the most in a single order.

    SELECT CustomerName, MAX(TotalAmount) AS MaxSpent FROM Orders;

3. List the orders placed on or after '2023-10-23'.

    SELECT * FROM Orders WHERE OrderDate >= '23-oct-2023';

4. Calculate the average order amount.

    SELECT AVG(TotalAmount) AS AverageOrderAmount FROM Orders;

5. List the customers who placed more than one order.

    SELECT CustomerName FROM Orders GROUP BY CustomerName HAVING COUNT(*) > 1;

6. Find the customer who placed the earliest order.

    SELECT CustomerName, MIN(OrderDate) AS EarliestOrderDate FROM Orders;

7. Count the number of orders placed in October 2023.

    SELECT COUNT(*) AS OctoberOrders FROM Orders WHERE OrderDate >= '01-oct-2023' AND OrderDate <= '31-oct-2023';

8. List the orders in ascending order of total amount.

    SELECT * FROM Orders ORDER BY TotalAmount;

---------------------------- GROUP BY - HAVING CLAUSE For the Orders Table --------------------------

1. Calculate the total amount spent by customers who placed more than 2 orders.

    SELECT CustomerName, SUM(TotalAmount) AS TotalAmountSpent FROM Orders GROUP BY CustomerName HAVING COUNT(*) > 2;

2. List the customers who spent at least $500 in a single order and find the highest total amount spent by each.

    SELECT CustomerName, MAX(TotalAmount) AS HighestTotalAmount FROM Orders GROUP BY CustomerName HAVING MAX(TotalAmount) >= 500;

3. Find the orders placed on or after '2023-10-23' with a total amount greater than $400.

    SELECT * FROM Orders WHERE OrderDate >= '23-oct-2023' AND TotalAmount > 400;
    
4. Calculate the average order amount for orders with more than 1 item.

    SELECT AVG(TotalAmount) AS AvgOrderAmount FROM Orders WHERE TotalAmount > 1;

5. List the customers who placed exactly 1 order and find the minimum total amount spent.

    SELECT CustomerName, MIN(TotalAmount) AS MinimumTotalAmountSpent FROM Orders GROUP BY CustomerName HAVING COUNT(*) = 1;

6. Find the orders placed in October 2023 with a total amount less than $600.

    SELECT * FROM Orders WHERE OrderDate >= '01-oct-2023' AND OrderDate <= '31-oct-2023' AND TotalAmount < 600;

7. Calculate the total amount spent by customers with names longer than 10 characters.

    SELECT CustomerName, SUM(TotalAmount) AS TotalAmountSpent FROM Orders WHERE LENGTH(CustomerName) > 10 GROUP BY CustomerName;

8. List the orders with at least 2 items and find the maximum total amount.

    SELECT OrderID, MAX(TotalAmount) AS MaximumTotalAmount FROM Orders GROUP BY OrderID HAVING COUNT(*) >= 2;

---------------------------- GROUP BY - HAVING AND ORDER BY For the Orders Table --------------------------

1. Calculate the total amount spent by customers who placed more than 2 orders, list the customers in alphabetical
   order, and order the results by total amount in descending order.

   SELECT CustomerName, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerName HAVING COUNT(OrderID) > 2 ORDER BY CustomerName ASC, TotalSpent DESC;

2. List the customers who spent at least $500 in a single order, find the highest total amount spent by each customer,
   and order the results by customer name in ascending order.

    SELECT CustomerName, MAX(TotalAmount) AS HighestAmount FROM Orders GROUP BY CustomerName HAVING MAX(TotalAmount) >= 500 ORDER BY CustomerName;

3. Find the orders placed on or after '2023-10-23' with a total amount greater than $400 and order the results by
   order date in ascending order.

   SELECT * FROM Orders WHERE OrderDate >= '23-oct-2023' AND TotalAmount > 400 ORDER BY OrderDate;

4. Calculate the average order amount for orders with more than 1 item, list the orders in descending order by order
   amount, and within the same amount, order them by order date in ascending order.
   
    SELECT OrderID, AVG(TotalAmount) AS AverageAmount FROM Orders GROUP BY OrderID HAVING COUNT(*) > 1 ORDER BY AverageAmount DESC, OrderDate ASC;

5. List the customers who placed exactly 1 order, find the minimum total amount spent, and order the results by
   customer name in ascending order.

   SELECT CustomerName, MIN(TotalAmount) AS MinimumAmount GROUP BY CustomerName FROM Orders HAVING COUNT(OrderID) = 1 ORDER BY CustomerName ASC;

6. Find the orders placed in October 2023 with a total amount less than $600, list the orders in descending order
   by order date, and within the same date, order them by total amount in ascending order.

   SELECT * FROM Orders WHERE OrderDate >= '01-oct-2023' AND OrderDate <= '31-oct-2023' AND TotalAmount < 600 ORDER BY OrderDate DESC, TotalAmount ASC;

7. Calculate the total amount spent by customers with names longer than 10 characters, list the customers in ascending
    order by total amount, and within the same amount, order them by customer name in descending order.

    SELECT CustomerName, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerName HAVING LENGTH(CustomerName) > 10 ORDER BY TotalSpent ASC, CustomerName DESC;

8. List the orders with at least 2 items, find the maximum total amount, and order the results by maximum amount in
   descending order.

   SELECT OrderID, MAX(TotalAmount) AS MaximumAmount FROM Orders GROUP BY OrderID HAVING COUNT(*) >= 2 ORDER BY MaximumAmount DESC;

=======================================================================================

4. Create the Customers Table:
Write an SQL query to create the "Customers" table with the following columns:

CustomerID (integer)
CustomerName (text)
City (text)
State (text)

---------------------------- table created --------------------------

CREATE TABLE Customers (
    CustomerID INT,
    CustomerName TEXT,
    City TEXT,
    State TEXT
);

---------------------------- record inserted --------------------------

INSERT INTO Customers VALUES (1, 'John Smith', 'New York', 'NY');

INSERT INTO Customers VALUES (2, 'Jane Doe', 'Los Angeles', 'CA');

INSERT INTO Customers VALUES (3, 'Bob Johnson', 'Chicago', 'IL');

INSERT INTO Customers VALUES (4, 'Alice Williams', 'Houston', 'TX');

INSERT INTO Customers VALUES (5, 'David Brown', 'Philadelphia', 'PA');

INSERT INTO Customers VALUES (6, 'Mary Davis', 'Phoenix', 'AZ');

INSERT INTO Customers VALUES (7, 'Tom Wilson', 'San Antonio', 'TX');

INSERT INTO Customers VALUES (8, 'Linda Lee', 'San Diego', 'CA');

INSERT INTO Customers VALUES (9, 'Mike Clark', 'Dallas', 'TX');

INSERT INTO Customers VALUES (10, 'Emily Thomas', 'Austin', 'TX');

INSERT INTO Customers VALUES (11, 'Peter Evans', 'San Francisco', 'CA');

INSERT INTO Customers VALUES (12, 'Sara Martin', 'Seattle', 'WA');

INSERT INTO Customers VALUES (13, 'Chris Roberts', 'Denver', 'CO');

INSERT INTO Customers VALUES (14, 'Laura Garcia', 'Boston', 'MA');

INSERT INTO Customers VALUES (15, 'Mark Harris', 'Miami', 'FL');

---------------------------- GROUP BY For the Customers Table --------------------------

1. List the customers in a specific city, e.g., 'New York'.

    SELECT * FROM Customers WHERE City = 'New York';

2. Find the state with the highest number of customers.

    SELECT State, COUNT(*) AS CustomerCount FROM Customers GROUP BY State ORDER BY CustomerCount DESC ;
    
3. List the customers in alphabetical order by name.

    SELECT * FROM Customers ORDER BY CustomerName;

4. Count the total number of customers.

    SELECT COUNT(*) AS TotalCustomers FROM Customers;

5. Find the customer with the longest name (maximum character length).

    SELECT CustomerName FROM Customers ORDER BY LENGTH(CustomerName) DESC;

6. List the customers in a specific state, e.g., 'TX'.

    SELECT * FROM Customers WHERE State = 'TX';

7. Calculate the average customer name length.

    SELECT AVG(LENGTH(CustomerName)) AS AvgNameLength FROM Customers;

8. Find the state with the fewest customers.

    SELECT State, COUNT(*) AS CustomerCount FROM Customers GROUP BY State ORDER BY CustomerCount;

---------------------------- GROUP BY - HAVING CLAUSE For the Customers Table --------------------------


1. List the customers in a specific city, e.g., 'New York', and find the total number of customers in that city.

    SELECT * FROM customers WHERE city = 'New York';
    SELECT COUNT(*) AS customer_count FROM customers WHERE city = 'New York';

2. Find the states with more than 2 customers and calculate the average name length for customers in each state.

    SELECT State, AVG(LENGTH(CustomerName)) AS AvgNameLength FROM Customers GROUP BY State HAVING COUNT(*) > 2;

3. List the customers in alphabetical order by name, but only if their names contain the letter 'a'.

    SELECT CustomerName FROM Customers WHERE CustomerName LIKE '%a%' ORDER BY CustomerName;

4. Count the total number of customers in each state and find the states with exactly 1 customer.

    SELECT State, COUNT(*) AS TotalCustomers FROM Customers GROUP BY State HAVING COUNT(*) = 1;

5. Find the customer with the longest name (maximum character length) and their state.

    SELECT CustomerName, State FROM Customers ORDER BY LENGTH(CustomerName) DESC ;

6. List the customers in a specific state, e.g., 'TX', and calculate the total number of customers in that state.

    SELECT CustomerName FROM Customers WHERE State = 'TX';
    SELECT COUNT(*) AS TotalCustomersInState FROM Customers WHERE State = 'TX';

7. Calculate the average customer name length for customers in states with more than 3 customers.

    SELECT State, AVG(LENGTH(CustomerName)) AS AvgNameLength FROM Customers GROUP BY State HAVING COUNT(*) > 3;

8. Find the states with the fewest customers and list the customers in those states.

    -------------------------- ------------------------

---------------------------- GROUP BY - HAVING AND ORDER BY For the Customers Table --------------------------

1. List the customers in a specific city, e.g., 'New York', and find the total number of customers in that city,
   order the results by customer name in ascending order.

   SELECT CustomerName, COUNT(*) AS CustomerCount FROM Customers WHERE City = 'New York' GROUP BY CustomerName ORDER BY CustomerName;

2. Find the states with more than 2 customers, calculate the average name length for customers in each state, and
   order the results by state in ascending order.

   SELECT State, AVG(LENGTH(CustomerName)) AS AverageNameLength FROM Customers GROUP BY State HAVING COUNT(*) > 2 ORDER BY State;

3. List the customers in alphabetical order by name, but only if their names contain the letter 'a', and order the
   results by customer name in ascending order.

   SELECT CustomerName FROM Customers WHERE CustomerName LIKE '%a%' ORDER BY CustomerName;

4. Count the total number of customers in each state and find the states with exactly 1 customer, order the results
   by state in descending order.

   SELECT State, COUNT(*) AS CustomerCount FROM Customers GROUP BY State HAVING COUNT(*) = 1 ORDER BY State DESC;

5. Find the customer with the longest name (maximum character length) and their state.

    SELECT CustomerName, State FROM Customers ORDER BY LENGTH(CustomerName) DESC;

6. List the customers in a specific state, e.g., 'TX', and calculate the total number of customers in that state,
   order the results by customer name in descending order.

   SELECT CustomerName, COUNT(*) AS CustomerCount FROM Customers WHERE State = 'TX' GROUP BY CustomerName ORDER BY CustomerName DESC;

7. Calculate the average customer name length for customers in states with more than 3 customers and order the results
   by average name length in descending order.

   SELECT State, AVG(LENGTH(CustomerName)) AS AverageNameLength FROM Customers GROUP BY State HAVING COUNT(*) > 3 ORDER BY AverageNameLength DESC;

8. Find the states with the fewest customers, list the customers in those states, and order the results by state
   in ascending order.

   ----------------------      ---------------------

===========================================================================================












