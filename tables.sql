-- PostgreSQL


-- CREATING TABLES



-- Clients Table
CREATE TABLE clients (
	client_id serial PRIMARY KEY,
	last_name varchar(64) NOT NULL,
	first_name varchar(64) NOT NULL,
	email varchar(64),
	phone varchar(20)
);

-- Suppliers Table
CREATE TABLE suppliers (
	supplier_id serial PRIMARY KEY,
	company_name varchar(64) NOT NULL,
	contact_name varchar(64) NOT NULL,
	country varchar(64) NOT NULL,
	city varchar(64) NOT NULL,
	address varchar(64) NOT NULL,
	phone varchar(20)
);

-- Employees Table
CREATE TABLE employees (
	employee_id serial PRIMARY KEY,
	last_name varchar(64) NOT NULL,
	first_name varchar(64) NOT NULL,
	birth_date date NOT NULL,
	hire_date date NOT NULL,
	salary real NOT NULL,
	email varchar(64),
	phone varchar(20)
);

-- Payments Table
CREATE TABLE payments (
	payment_id serial PRIMARY KEY,
	client_id int REFERENCES clients (client_id),
	card_number varchar(20) NOT NULL,
	payment_date date NOT NULL,
	is_paid boolean DEFAULT FALSE
);

-- Orders Table
CREATE TABLE orders (
    order_id serial PRIMARY KEY,
    client_id int REFERENCES clients (client_id),
	employee_id int REFERENCES employees (employee_id),
	payment_id int REFERENCES payments (payment_id),
	destination_country varchar(64) NOT NULL,
	destination_city varchar(64) NOT NULL,
	destination_address varchar(64) NOT NULL,
	cargo varchar(64) NOT NULL,
	cost real
);

-- Fuel Types Table
CREATE TABLE fuel_types (
	fuel_type_id serial PRIMARY KEY,
	fuel_name varchar(64) NOT NULL
);

-- Vehicles' Models Table
CREATE TABLE models (
	model_id serial PRIMARY KEY,
	fuel_type_id int REFERENCES fuel_types (fuel_type_id),
	type varchar(64) NOT NULL,
	brand varchar(64) NOT NULL,
	model varchar(64) NOT NULL,
	mass real NOT NULL,
	color varchar(64) NOT NULL,
	fuel_volume real NOT NULL
);

-- Vehicles Table
CREATE TABLE vehicles (
	vehicle_id serial PRIMARY KEY,
	employee_id int REFERENCES employees (employee_id),
	supplier_id int REFERENCES suppliers (supplier_id),
	model_id int REFERENCES models (model_id),
	register_number varchar(16)
);

