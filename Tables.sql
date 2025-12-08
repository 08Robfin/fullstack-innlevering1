CREATE TABLE RestaurantTables (
    id INT PRIMARY KEY AUTO_INCREMENT,
    table_number INT NOT NULL,
    seats INT NOT NULL
);


CREATE TABLE Bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255) NOT NULL,
    customer_email VARCHAR(255) NOT NULL,
    date_and_time DATETIME NOT NULL,
    number_of_people INT NOT NULL,
    table_id INT NOT NULL,
    comment VARCHAR(255),

    FOREIGN KEY (table_id) REFERENCES RestaurantTables(id)
);

CREATE TABLE MenuItems (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE Employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL
);