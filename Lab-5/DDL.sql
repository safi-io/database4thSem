-- Data Definition Language (DDL) for the 'employees' table in MySQL

-- Drop the table if it exists to start fresh
CREATE DATABASE employeesLAB5;
USE employeesLAB5;

-- Create the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10),
    salary DECIMAL(10, 2),
    commission_pct DECIMAL(4, 2),
    manager_id INT,
    department_id INT
);

-- Insert sample data into the 'employees' table
INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2022-01-15', 'AD_PRES', 24000.00, NULL, NULL, 90),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2023-03-20', 'AD_VP', 17000.00, NULL, 100, 90),
('Peter', 'Jones', 'peter.jones@example.com', '555-123-4567', '2023-05-10', 'IT_PROG', 9000.00, NULL, 103, 60),
('Mary', 'Brown', 'mary.brown@example.com', '111-222-3333', '2024-02-01', 'IT_PROG', 9500.00, NULL, 103, 60),
('David', 'Wilson', 'david.wilson@example.com', '444-555-6666', '2024-07-01', 'FI_MGR', 12000.00, NULL, 101, 100),
('Susan', 'Garcia', 'susan.garcia@example.com', '777-888-9999', '2023-09-15', 'FI_ACCOUNT', 8000.00, NULL, 101, 100),
('Robert', 'Miller', 'robert.miller@example.com', '333-444-5555', '2022-11-01', 'SA_MAN', 11000.00, 0.15, 100, 80),
('Linda', 'Davis', 'linda.davis@example.com', '666-777-8888', '2023-06-01', 'SA_MAN', 10500.00, 0.20, 100, 80),
('Michael', 'Rodriguez', 'michael.rodriguez@example.com', '222-333-4444', '2024-03-10', 'SA_REP', 6000.00, 0.25, 107, 80),
('Jennifer', 'Williams', 'jennifer.williams@example.com', '888-999-0000', '2024-08-01', 'SA_REP', 6500.00, 0.20, 107, 80),
('Charles', 'Moore', 'charles.moore@example.com', '999-000-1111', '2025-01-05', 'AC_MGR', 12000.00, NULL, 101, 110),
('Margaret', 'Taylor', 'margaret.taylor@example.com', '000-111-2222', '2023-04-20', 'AC_ACCOUNT', 8500.00, NULL, 101, 110),
('Thomas', 'Anderson', 'thomas.anderson@example.com', '111-333-5555', '2022-07-10', 'IT_PROG', 10000.00, NULL, 103, 60),
('Jessica', 'Thomas', 'jessica.thomas@example.com', '222-444-6666', '2024-05-15', 'FI_ACCOUNT', 7500.00, NULL, 101, 100),
('Andrew', 'Jackson', 'andrew.jackson@example.com', '333-555-7777', '2023-10-01', 'SA_REP', 7000.00, 0.10, 108, 80),
('Laura', 'White', 'laura.white@example.com', '444-666-8888', '2025-03-01', 'SA_REP', 5500.00, 0.15, 108, 80),
('Kevin', 'Harris', 'kevin.harris@example.com', '555-777-9999', '2024-09-20', 'AD_ASST', 3000.00, NULL, 101, 90),
('Ashley', 'Martin', 'ashley.martin@example.com', '666-888-0000', '2023-11-15', 'HR_REP', 6000.00, NULL, 101, 40),
('Brandon', 'Young', 'brandon.young@example.com', '777-999-1111', '2024-04-01', 'PR_REP', 5500.00, NULL, 101, 70),
('Stephanie', 'Allen', 'stephanie.allen@example.com', '888-000-2222', '2022-08-01', 'MK_MAN', 13000.00, NULL, 100, 20),
('Timothy', 'King', 'timothy.king@example.com', '999-111-3333', '2023-01-10', 'MK_REP', 6000.00, 0.10, 201, 20),
('Catherine', 'Wright', 'catherine.wright@example.com', '000-222-4444', '2024-06-01', 'SH_CLERK', 2500.00, NULL, 121, 50),
('Raymond', 'Green', 'raymond.green@example.com', '111-333-5555', '2022-12-15', 'SH_CLERK', 2700.00, NULL, 121, 50),
('Sandra', 'Adams', 'sandra.adams@example.com', '222-444-6666', '2023-07-01', 'SH_CLERK', 2800.00, NULL, 121, 50),
('Roy', 'Nelson', 'roy.nelson@example.com', '333-555-7777', '2024-02-10', 'SH_CLERK', 2900.00, NULL, 121, 50),
('Theresa', 'Baker', 'theresa.baker@example.com', '444-666-8888', '2024-10-01', 'HR_MGR', 12000.00, NULL, 100, 40),
('Beverly', 'Hall', 'beverly.hall@example.com', '555-777-9999', '2023-09-01', 'PR_MGR', 12000.00, NULL, 100, 70),
('Lori', 'Hill', 'lori.hill@example.com', '666-888-0000', '2022-05-01', 'AC_ACCOUNT', 7500.00, NULL, 114, 110),
('Aaron', 'Roberts', 'aaron.roberts@example.com', '777-999-1111', '2024-03-15', 'IT_PROG', 8500.00, NULL, 103, 60),
('Kelly', 'Turner', 'kelly.turner@example.com', '888-000-2222', '2023-12-01', 'FI_ACCOUNT', 6900.00, NULL, 101, 100);
