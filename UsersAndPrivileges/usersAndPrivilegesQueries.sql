-- 1. Creating Users
CREATE USER 'saad'@'localhost' IDENTIFIED BY 'hellosaad';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'adminpass';

-- 2. Viewing Existing Users
SELECT User, Host FROM mysql.user;

-- 3. Viewing Permissions for a User
SHOW GRANTS FOR 'saad'@'localhost';

-- 4. Granting Privileges to a User
-- Granting SELECT and UPDATE on all tables of the FINTAL database
GRANT SELECT, UPDATE ON FINTAL.* TO 'saad'@'localhost';

-- 5. Creating a Super Admin User
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

-- 6. Revoking Privileges
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'saad'@'localhost';

-- 7. Changing Password for a User
ALTER USER 'safi'@'localhost' IDENTIFIED BY 'newpass123';

-- 8. Renaming a User
RENAME USER 'oldname'@'localhost' TO 'newname'@'localhost';

-- 9. Dropping (Deleting) a User
DROP USER 'saad'@'localhost';
