-- 0-privileges.sql

-- Check if user_0d_1 exists and show privileges if it does
SET @user := 'user_0d_1';
SET @host := 'localhost';
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = @user AND host = @host) INTO @exists;
IF @exists THEN
    SHOW GRANTS FOR @user@'localhost';
ELSE
    SELECT CONCAT('No such user: ', @user, ' @ ', @host) AS Message;
END IF;

-- Check if user_0d_2 exists and show privileges if it does
SET @user := 'user_0d_2';
SET @host := 'localhost';
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = @user AND host = @host) INTO @exists;
IF @exists THEN
    SHOW GRANTS FOR @user@'localhost';
ELSE
    SELECT CONCAT('No such user: ', @user, ' @ ', @host) AS Message;
END IF;

