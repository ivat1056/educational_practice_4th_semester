CREATE TABLE floor (
  id_floor INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(10) NOT NULL
);

CREATE TABLE clients (
  id_client INTEGER PRIMARY KEY AUTOINCREMENT,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  phone VARCHAR(20),
  email VARCHAR(100),
  id_floor INTEGER REFERENCES floor(id_floor)
);

CREATE TABLE employees (
  id_employee INTEGER PRIMARY KEY AUTOINCREMENT,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  middle_name VARCHAR(50),
  phone VARCHAR(20),
  id_floor INTEGER REFERENCES floor(id_floor)
);

CREATE TABLE orders (
  id_order INTEGER PRIMARY KEY AUTOINCREMENT,
  id_client INTEGER REFERENCES clients(id_client),
  order_date DATE
);

CREATE TABLE status (
  id_status INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE products (
  id_product INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2)
);

CREATE TABLE order_items (
  id_order INTEGER REFERENCES orders(id_order),
  id_product INTEGER REFERENCES products(id_product),
  count INTEGER,
  id_status INTEGER REFERENCES status(id_status),
  PRIMARY KEY (id_order, id_product)
);
