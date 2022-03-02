#!/bin/sh

echo "=> 도커 이미지 생성"
docker build . -t ubuntu-js

echo "=> 도커 정지"
docker stop ubuntu-js

echo "=> 도커 삭제"
docker rm ubuntu-js

echo "=> 도커 생성"
docker run --privileged -d  -p 2022:22 --network network-docker-devtool --name ubuntu-js ubuntu-js