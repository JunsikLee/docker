#!/bin/sh

#설치 폴더 이동
echo "=> dnf 패키지 설치"
dnf update -y
dnf search openjdk
dnf install java-17-openjdk.x86_64 java-17-openjdk-devel.x86_64 -y

echo "=> 설치 확인"
java --version