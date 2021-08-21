## installation
- sudo apt-get install mysql-server
- sudo mysql_secure_installation
- sudo systemctl enable --now mysql.service (start mysql in background services when system boots up)
- systemctl status mysql.servicesystemctl status mysql.service
- sudo ufw status (allow it throw the firewall)
- sudo ufw allow mysql
- mysql -u root -p

### FIX Access denied for user 'root'@'localhost'
- sudo systemctl stop mysql
- sudo mkdir /var/run/mysqld
- sudo chown mysql: /var/run/mysqld
- sudo mysqld_safe --skip-grant-tables --skip-networking

open a new terminal window

- mysql -u root

<!-- change password policy -->
- > SHOW VARIABLES LIKE 'validate_password%';
- > SET GLOBAL validate_password.policy=LOW;

<!-- create root user -->
- > FLUSH PRIVILEGES;
- > drop user 'root'@'localhost';
- > create user 'root'@'localhost' identified by 'root_password';
- > GRANT ALL ON *.* TO 'root'@'localhost';
- > FLUSH PRIVILEGES;

close terminals and reboot your system
