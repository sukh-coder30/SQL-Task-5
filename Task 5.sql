create database customerDB;
use customerDB;
create table customers(
customer_id int primary key,
customer_name varchar(100),
city varchar(50));

create table orders(
    OrderID int primary key,
    OrderDate date,
    customer_id int,
    Amount decimal(10,2),
    foreign key (customer_id) references customers(customer_id)
);

insert into customers values 
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston');

insert into Orders values
(101, '2023-06-01', 1, 250.00),
(102, '2023-06-05', 2, 300.00),
(103, '2023-06-07', 1, 150.00),
(104, '2023-06-10', 3, 500.00);

#INNER JOIN
select customers.customer_name, orders.OrderID, orders.Amount
from customers
inner join orders on customers.customer_id= orders.customer_id;

#  LEFT JOIN

select customers.customer_name, orders.OrderID, orders.Amount
from customers
left join orders on customers.customer_id= orders.customer_id;

#RIGHT JOIN 
select customers.customer_name, orders.OrderID, orders.Amount
from customers
right join orders on customers.customer_id= orders.customer_id;

# Union
select customers.customer_name, orders.OrderID, orders.Amount
from customers
left join orders on customers.customer_id= orders.customer_id
union
select customers.customer_name, orders.OrderID, orders.Amount
from customers
right join orders on customers.customer_id= orders.customer_id;


