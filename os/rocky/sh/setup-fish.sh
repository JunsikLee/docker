#!/bin/sh
echo "=> fish 설치"
yum install fish -y

echo "=> 쉘 설치 확인"
chsh -l

echo "=> 쉘 기본 설정 변경"
chsh -s /usr/bin/fish

echo "=> fish 쉘 실행"
echo "fish"

echo "=> oh-my-fish 설치"
echo "curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish"

echo "=> oh-my-fish 테마변경"
echo "omf install agnoster"
echo "omf theme agnoster"

