-- Create additional databases if needed
CREATE DATABASE IF NOT EXISTS laravel_test;
GRANT ALL PRIVILEGES ON laravel_test.* TO 'laravel_user'@'%';
FLUSH PRIVILEGES;