#!/bin/sh

echo "=> Redis 패키지 설치"
yum install redis -y

echo "=> Redis 서비스 구동"
systemctl start redis
systemctl enable redis
systemctl status redis