CREATE DATABASE printing_service_db;
USE printing_service_db;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  phone VARCHAR(20)
);

CREATE TABLE design_files (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  file_name VARCHAR(100),
  file_type VARCHAR(50)
);

CREATE TABLE materials (
  id INT AUTO_INCREMENT PRIMARY KEY,
  material_name VARCHAR(50),
  price_per_gram DECIMAL(10,2)
);

CREATE TABLE print_jobs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  design_file_id INT,
  status VARCHAR(50),
  total_cost DECIMAL(10,2)
);

CREATE TABLE payments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  print_job_id INT,
  amount DECIMAL(10,2),
  payment_method VARCHAR(50)
);

INSERT INTO customers (name, email, phone) VALUES
('Juan Dela Cruz', 'juan@email.com', '09123456789'),
('Maria Santos', 'maria@email.com', '09987654321');