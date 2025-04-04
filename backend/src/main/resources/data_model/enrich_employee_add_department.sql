-- Drop tables if they exist (drop employee first because of foreign key)
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

-- Create the department table
CREATE TABLE department (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    location VARCHAR(255),
    PRIMARY KEY (id)
);

-- Create the enriched employee table with additional columns and foreign key
CREATE TABLE employee (
    id BIGINT NOT NULL AUTO_INCREMENT,
    address VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    employee_code VARCHAR(255) NOT NULL UNIQUE,
    image_url VARCHAR(255),
    job_title VARCHAR(255),
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) UNIQUE,
    department_id BIGINT NOT NULL,
    date_of_birth DATE,
    hire_date DATE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    identification_number VARCHAR(50) NOT NULL UNIQUE,
    emergency_contact_name VARCHAR(255),
    emergency_contact_phone VARCHAR(255),
    emergency_contact_relationship VARCHAR(100),
    education_level VARCHAR(100),
    nationality VARCHAR(100),
    marital_status VARCHAR(50),
    contract_type VARCHAR(100),
    job_level VARCHAR(100),
    supervisor_name VARCHAR(255),
    supervisor_email VARCHAR(255),
    work_location VARCHAR(255),
    bank_account_number VARCHAR(100),
    tax_id_number VARCHAR(100),
    social_security_number VARCHAR(100),
    employment_status VARCHAR(50),
    termination_date DATE,
    notes TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Create indexes for better performance
CREATE INDEX idx_email ON employee(email);
CREATE INDEX idx_employee_code ON employee(employee_code);
CREATE INDEX idx_identification_number ON employee(identification_number);
