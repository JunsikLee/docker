#!/bin/sh

echo "=> 패키지 설치"
yum install postgresql-server -y


echo "=> 패키지 구동"
postgresql-setup --initdb
systemctl enable postgresql.service
systemctl start postgresql.service
systemctl status postgresql.service


echo "=> psql 구동법"
echo "su - postgres"
echo "psql"
echo "alter user postgres with password '사용할 패스워드';":
echo "create database test;";