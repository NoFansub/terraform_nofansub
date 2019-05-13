#!/bin/bash -ex
yum -y install httpd php mysql php-mysql
chkconfig httpd on
service httpd start
if [ ! -f /var/www/html/lab-app.tgz ]; then
cd /var/www/html
wget https://us-west-2-tcprod.s3.amazonaws.com/courses/ILT-CUR-100-ACFNDS/v1.0.16/acf-lab3-vpc/scripts/lab-app.tgz
tar xvfz lab-app.tgz
chown apache:root /var/www/html/rds.conf.php
fi
