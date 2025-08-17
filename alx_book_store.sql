CREATE DATABASE IF NOT EXISTS alx_book_store

USE alx_book_store

CREATE TABLE IF NOT EXISTS Authors (
    author_id PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
)

CREATE TABLE IF NOT EXISTS Books (
    book_id PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL ,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    FOREIGN KEY (author_id) KEY REFRENCE Authors(author_id) 
)



CREATE TABLE IF NOT EXISTS Customers (
    customer_id PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
)

CREATE TABLE IF NOT EXISTS orders (
    order_id PRIMARY KEY AUTO_INCREMENT,
    customer_id int NOT NULL, 
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFRENCES Customers(customer_id)
)

CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid PRIMARY KEY AUTO_INCREMENT,
    order_id INT
    book_id INT NOT NULL
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFRENCE orders(order_id)
    FOREIGN KEY (book_id) REFRENCES Books(book_id)
)