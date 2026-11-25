create database Restaurant_management;
use Restaurant_management;
create table Customers(Customer_id int primary key,Customer_name varchar(100) not null,Phone varchar(15) unique,Email varchar(100) unique,City varchar(150));
insert into Customers value
(1, 'Arjun Menon', '1212121212', 'arjun@gmail.com', 'Kochi'),
(2, 'Anjali Nair', '2323232323', 'anjali@gmail.com', 'Calicut'),
(3, 'Rahul Das', '3434343434', 'rahul@gmail.com', 'Malappuram'),
(4, 'Sneha Thomas', '4545454545', 'sneha@gmail.com', 'Thrissur'),
(5, 'Vishnu Raj', '5656565656', 'vishnu@gmail.com', 'Kannur');
create table  Menu_items (Item_ID INT PRIMARY KEY,Item_name VARCHAR(100) NOT NULL,Category VARCHAR(50) NOT NULL,Price DECIMAL(10,2) NOT NULL,
Availability VARCHAR(20) DEFAULT 'Available',CHECK (Price > 0));
insert into Menu_Items value
(101, 'Chicken Biriyani', 'Main Course', 160.00, 'Available'),
(102, 'Beef Biriyani', 'Main Course', 180.00, 'Available'),
(103, 'Veg Fried Rice', 'Main Course', 120.00, 'Available'),
(104, 'Fresh Lime Juice', 'Beverages', 40.00, 'Available'),
(105, 'Shawarma', 'Fast Food', 100.00, 'Available');
create table Orders (Order_ID int primary key,Customer_ID int not null,Order_Date date not null,Order_Type varchar(30) not null,
    Order_Status varchar(30) default 'Pending',foreign key (Customer_ID)references Customers(Customer_ID));
insert into Orders values
(201, 1, '2026-11-20', 'Dine-in', 'Completed'),
(202, 2, '2026-11-20', 'Takeaway', 'Completed'),
(203, 3, '2026-11-21', 'Dine-in', 'Completed'),
(204, 4, '2026-11-21', 'Delivery', 'Pending'),
(205, 5, '2026-11-22', 'Takeaway', 'Completed');
CREATE TABLE Order_details (Order_detail_ID int primary key,Order_ID int not null,Item_ID int not null,Quantity int not null,Subtotal decimal(10,2) not null,
foreign key (Order_ID)references Orders(Order_ID),foreign key (Item_ID)references Menu_items(Item_ID),check (Quantity > 0),Check (Subtotal > 0));
insert into Order_Details values
(301, 201, 101, 2, 320.00),
(302, 202, 102, 1, 180.00),
(303, 203, 103, 2, 240.00),
(304, 204, 104, 3, 120.00),
(305, 205, 105, 2, 200.00);
select * from customers;
select * from menu_items;
select * from order_details;
select * from orders;

    
