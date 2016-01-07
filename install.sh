#!/bin/bash

echo "Installing MariaDB..."
sudo apt-get install -y mariadb-server


echo "Creating Sakila DB..."
mysql -u root < sakila-mv-schema.sql

echo "Loading Sakila Data..."
mysql -u root < sakila-mv-data.sql

echo "Setting MariaDB's bind address to 0.0.0.0"
sudo sed -i "s/bind-address.*/bind-address=0.0.0.0/" /etc/mysql/mariadb.conf.d/mysqld.cnf

echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%.%.%.%' IDENTIFIED BY 'password' WITH GRANT OPTION;" | sudo mysql -u root

echo "Restarting MariaDB"
sudo systemctl restart mysql
