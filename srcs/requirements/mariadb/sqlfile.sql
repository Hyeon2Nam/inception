CREATE DATABASE wordpress;
CREATE USER 'hyenam'@'%' IDENTIFIED BY 'asdf123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'hyenam'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'asdf123';