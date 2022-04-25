#!/bin/sh

#설치 폴더 이동
cd /opt

#파일 다운로드
curl -O https://download.java.net/java/GA/jdk17.0.1/2a2082e5a09d4267845be086888add4f/12/GPL/openjdk-17.0.1_linux-aarch64_bin.tar.gz
tar zxvf openjdk-17.0.1_linux-aarch64_bin.tar.gz

#환경 변수 등록
echo "" >> /etc/profile
echo "#JAVA" >> /etc/profile
echo "export JAVA_HOME=/opt/jdk-17.0.1" >> /etc/profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin"  >> /etc/profile
echo "export CLASSPATH=.:\$JAVA_HOME/lib/tools.jar" >> /etc/profile