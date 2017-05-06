# docker-magento-apache-php
A scalable Magento 2.x with MySQL, Apache and PHP
A lab for Magento plataform

# How to Build
1. Execute docker-compose up --build -d
2. Initialize MySQl with command docker run dockermagentoapachephp_db -e MYSQL_RANDOM_ROOT_PASSWORD=yes
3. Create a magento user and db, then access the db container: 
	docker run -it dockermagentoapachephp_db /bin/bash
	./createUserAndDBMagento.sh
4. Extract Magento installMagento.sh/bat or download your Magento application in ./magento/2.1.6/store

# Magento Setup

Database Server Host: 127.0.0.1
Database Server Username: magento
Database Server Password: magento1
Database Name: magento



# Useful Commands
Building: docker-compose up --build -d
Remove composed images: docker-compose rm -f
Connecting on Apache container: docker run -it dockermagentoapachephp_apache /bin/bash
Connecting on MySQL container: docker run -it dockermagentoapachephp_db /bin/bash


# Some Knowledge Base

Q: Couldn't connect to Docker daemon at http+docker://localunixsocket - is it running?
A: Solve running with sudo command

Q: Executing createUserAndDBMagento.sh inside container, I got the error
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock'
A: Try restart MySQL inside container eith the command service mysql restart