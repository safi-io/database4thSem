-- Data Definition Language (DDL) for the required tables in MySQL
CREATE DATABASE lab5Joins;
use lab5Joins;

-- Drop tables if they exist
DROP TABLE IF EXISTS job_history;
DROP TABLE IF EXISTS jobs;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS regions;

-- Create regions table
CREATE TABLE regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region_name VARCHAR(25)
);

-- Create countries table
CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(40),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Create locations table
CREATE TABLE locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(25),
    country_id CHAR(2),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(30) UNIQUE NOT NULL,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- Create jobs table
CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary DECIMAL(8, 2),
    max_salary DECIMAL(8, 2)
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(10),
    salary DECIMAL(8, 2),
    commission_pct DECIMAL(2, 2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

-- Create job_history table
CREATE TABLE job_history (
    employee_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id INT,
    PRIMARY KEY (employee_id, start_date),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert mock data

-- Regions
INSERT INTO regions (region_name) VALUES ('Europe');
INSERT INTO regions (region_name) VALUES ('Americas');
INSERT INTO regions (region_name) VALUES ('Asia');
INSERT INTO regions (region_name) VALUES ('Middle East and Africa');

-- Countries
INSERT INTO countries (country_id, country_name, region_id) VALUES ('CA', 'Canada', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('US', 'United States of America', 2);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('UK', 'United Kingdom', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('DE', 'Germany', 1);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('ZA', 'South Africa', 4);
INSERT INTO countries (country_id, country_name, region_id) VALUES ('IN', 'India', 3);

-- Locations
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('2017 Shaughnessy St', 'T0B 4X3', 'Edmonton', 'Alberta', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT'); -- Assuming Italy is in Europe
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('930 West Bond St', '99201', 'Southlake', 'Texas', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'); -- Assuming Australia is in Asia
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxfordshire', 'UK');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('2004 Zehntner Strasse', '3005', 'Bern', 'BE', 'CH'); -- Assuming Switzerland is in Europe
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('Schwanthalerstr. 31', '80336', 'Munich', 'Bavaria', 'DE');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('PO Box 1141', '0000', 'Cairo', NULL, 'EG'); -- Assuming Egypt is in Middle East and Africa
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('10910 W Pico Blvd', '90024', 'Los Angeles', 'California', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('200 Kipling Ave', 'M8Z 5S1', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('40-5-12 Tsushimamachihonmachi', '491', 'Nagoya', 'Aichi', 'JP'); -- Assuming Japan is in Asia
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1200 Bay Street', 'M5R 2A5', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('The Grill House, 63 Stadhuisplein', '2000', 'Antwerpen', 'BE'); -- Assuming Belgium is in Europe
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('20 Rue des Corps-Saints', '1730', 'Geneva', 'GE', 'CH');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('Murtenstrasse 921', '3095', 'Spiez', 'BE', 'CH');

INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('8204 Arthur St', 'N1K 6Y9', 'North York', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('9408 Tiverton Court', '23550', 'Reston', 'Virginia', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('6092 Boxwood St', 'KBS-124', 'Whitehorse', 'Yukon Territory', 'CA');

INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('9727 Enterprise Parkway', '1730', 'Geneva', 'GE', 'CH');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('198 Clementi Loop', '12679', 'Singapore', '05', 'SG'); -- Assuming Singapore is in Asia
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('2011 Interiors Blvd', '99236', 'South Brunswick', 'New Jersey', 'US');

INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('600 Dr. Frederik Philips Blvd', '5600 BX', 'Eindhoven', 'North Brabant', 'NL'); -- Assuming Netherlands is in Europe
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('6300 Bridgepoint Parkway', '78730', 'Austin', 'Texas', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('500 Oracle Parkway', '94065', 'Redwood Shores', 'California', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('400-2 King William Street', 'L8N 3R5', 'Hamilton', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('11000 Richmond Ave', '77042', 'Houston', 'Texas', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('101 S Main Street', '45402', 'Dayton', 'Ohio', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1221 Brickell Ave', '33131', 'Miami', 'Florida', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1900 Ballenger Ave', '22314', 'Alexandria', 'Virginia', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('200 East Randolph Drive', '60601', 'Chicago', 'Illinois', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('300 Lakeside Dr', '94612', 'Oakland', 'California', 'US');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('699 Serpentine Rd', 'ON N0B 2C0', 'Stittsville', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1 First Canadian Place', 'M5X 1A4', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('50 Bloor St W', 'M4W 1A5', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('2 Bloor St E', 'M4W 1A8', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1 Yonge St', 'M5E 1E5', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('2 Queen St W', 'M5H 3R2', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('10 Dundas St E', 'M5B 2G9', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1 Adelaide St E', 'M5C 2V9', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('1 King St W', 'M5H 1A1', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('55 University Ave', 'M5J 2H7', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('100 Wellington St W', 'M5K 1B7', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('151 Yonge St', 'M5C 2W7', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('20 Bay St', 'M5J 2N8', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('181 Bay St', 'M5J 2T3', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('161 Bay St', 'M5J 2S1', 'Toronto', 'Ontario', 'CA');
INSERT INTO locatio
ns (street_address, postal_code, city, state_province, country_id) VALUES ('130 Queen St W', 'M5H 3P5', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('111 Richmond St W', 'M5H 2G4', 'Toronto', 'Ontario', 'CA');
INSERT INTO locations (street_address, postal_code, city, state_province, country_id) VALUES ('121 King St W', 'M5H 3T9', 'Toronto', 'Ontario', 'CA');