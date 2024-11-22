#!/bin/sh

echo "=> 도커 이미지 생성"
docker build . -t ubuntu-dev

echo "=> 도커 정지"
docker stop ubuntu-dev

echo "=> 도커 삭제"
docker rm ubuntu-dev

echo "=> 도커 생성"
docker run -it --name ubuntu-zsh ubuntu-dev