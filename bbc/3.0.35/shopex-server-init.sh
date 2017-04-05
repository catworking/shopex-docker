#!/usr/bin/env bash


#sed -i '7a 127.0.0.1 %CONNECTIONS.DEFAULT.HOST%' /etc/hosts
mysqladmin -uroot password 123
mysql -uroot -p123 -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' identified by '123' WITH GRANT OPTION"
mysql -uroot -p123 -e "FLUSH PRIVILEGES"
/etc/init.d/mysqld restart