#!/bin/sh

echo "=> 도커 이미지 생성"
docker build . -t rocky-js

echo "=> 도커 정지"
docker stop rocky

echo "=> 도커 삭제"
docker rm rocky

echo "=> 도커 생성"
docker run -d --privileged -p 3080:80 -p 3022:22 --network network-docker-devtool --name rocky rocky-js