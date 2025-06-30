# SQL-Task-5
Objective
To demonstrate mastery of data merging techniques in SQL using JOIN operations between two related tables: Customers and Orders.

Created Two Related Tables
Customers table:

Columns: CustomerID, CustomerName, City

Primary Key: CustomerID

Orders table:

Columns: OrderID, OrderDate, CustomerID, Amount

Foreign Key: CustomerID references Customers

2. Inserted Sample Data
Populated both tables with realistic data, including:

Multiple orders by the same customer

A customer with no orders (to test outer joins)

3. Performed Various JOINs
🔹 INNER JOIN
Fetched records where CustomerID exists in both tables.

🔹 LEFT JOIN
Displayed all customers, including those without any orders.

🔹 RIGHT JOIN
Displayed all orders, including those without a matching customer (if any).

Note: Not supported in SQLite; used in MySQL/PostgreSQL.

🔹 FULL OUTER JOIN
Combined all records from both tables.

Showed unmatched records from either table with NULL in place of missing data.

Used UNION if FULL OUTER JOIN was not natively supported.






