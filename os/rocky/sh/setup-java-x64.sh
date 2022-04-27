#!/bin/sh

#설치 폴더 이동
echo "=> 설치 폴더 이동"
cd /opt
pwd

#파일 다운로드
echo "=> 파일 다운로드 & 압축해제"
curl -O https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_linux-x64_bin.tar.gz
tar zxvf openjdk-17+35_linux-x64_bin.tar.gz

#환경 변수 등록
echo "=> 환경 변수 등록"
echo "" >> /etc/profile
echo "#JAVA" >> /etc/profile
echo "export JAVA_HOME=/opt/jdk-17" >> /etc/profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin"  >> /etc/profile
echo "export CLASSPATH=.:\$JAVA_HOME/lib/tools.jar" >> /etc/profile
source /etc/profile

echo "=> 설치 확인"
java --version