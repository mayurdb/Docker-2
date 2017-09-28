from centos:centos7

MAINTAINER Name mayurdb31@gmail.com

USER root

RUN yum install -y wget 

#install mysql
RUN  wget http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
RUN  yum install mysql57-community-release-el7-7.noarch.rpm -y
RUN  yum install mysql-community-server -y


#while running this docker image do following 

#initialize user 
#mysqld --initialize-insecure --user=mysql

#run mysql server in background
#mysqld --user=mysql &

#login to mysql server
#mysql -u root

#now create the users that you want and grant them access
