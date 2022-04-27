#!/bin/sh

echo "=> 패키지 설정 추가"

echo "[nginx]" >> /etc/yum.repos.d/nginx.repo
echo "name=nginx repo" >> /etc/yum.repos.d/nginx.repo
echo "baseurl=https://nginx.org/packages/centos/\$releasever/\$basearch/" >> /etc/yum.repos.d/nginx.repo
echo "gpgcheck=0" >> /etc/yum.repos.d/nginx.repo
echo "enabled=1" >> /etc/yum.repos.d/nginx.repo
cat /etc/yum.repos.d/nginx.repo

echo "=> 패키지 설치"
yum install nginx -y
rpm -qa | grep nginx

echo "=> 패키지 서비스 구동"
systemctl start nginx
systemctl enable nginx
systemctl status nginx

echo "=> 설정 파일 편집 방법"
echo "vim /etc/nginx/nginx.conf"

echo "=> 페이지 표시 폴더 정보"
echo "/usr/share/nginx/html"