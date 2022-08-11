#!/bin/sh
echo "docker-compose 종료"
docker-compose down

rm ./data/kafka-1/meta.properties
rm ./data/kafka-2/meta.properties
rm ./data/kafka-3/meta.properties