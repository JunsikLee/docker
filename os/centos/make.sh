#!/bin/sh

echo "=> 도커 이미지 생성"
docker build . -t centos-js

echo "=> 도커 정지"
docker stop centos-js

echo "=> 도커 삭제"
docker rm centos-js

echo "=> 도커 생성"
docker run --privileged -d  -p 1022:22 --network network-docker-devtool --name centos-js centos-js