-- create_user_and_list_privileges.sql

-- Create the user only if it does not already exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'user_0d_1_pwd';


-- Grant all privileges to the user
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Apply the changes
FLUSH PRIVILEGES;

-- List privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

