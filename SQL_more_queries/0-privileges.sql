-- 0-privileges.sql

-- Check and show grants for user_0d_1
SELECT 'user_0d_1' AS 'User', 
       IF(COUNT(*) > 0, CONCAT('SHOW GRANTS FOR ''user_0d_1''@''localhost'''), 'User does not exist') AS 'Query'
FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost';

-- Check and show grants for user_0d_2
SELECT 'user_0d_2' AS 'User', 
       IF(COUNT(*) > 0, CONCAT('SHOW GRANTS FOR ''user_0d_2''@''localhost'''), 'User does not exist') AS 'Query'
FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost';

