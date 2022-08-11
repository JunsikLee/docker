## 1. 실행 방법 
### 🧑🏻 docker-compose 실행
<pre>
sh docker-on.sh
</pre>

### 🧑🏻 docker-compose 종료
<pre>
sh docker-off.sh
</pre>

</br>

## 2. 설치 정보
### 🧑🏻‍💻 2.1 Kafka, Zookeeper, Kafdrop
```
Kafka 포트 - 9092
kafdrop 접속 - http://127.0.0.1:9091

Kafka 포트
localhost:30011,localhost:30012,localhost:30013
```
</br>


### 🧑🏻‍💻 2.2 kafka 명령
```
# 🦋 토픽 리스트
./kafka-topics.sh --bootstrap-server=localhost:30011,localhost:30012,localhost:30013 --list
# 🦋  토픽 생성
./kafka-topics.sh --bootstrap-server=localhost:30011,localhost:30012,localhost:30013 --create --topic my-topic --replication-factor 3 --partitions 10
# 🦋  토픽 삭제
./kafka-topics.sh --bootstrap-server=localhost:30011,localhost:30012,localhost:30013 --delete --topic my-topic
# 🦋  메세지 전송
./kafka-console-producer.sh --bootstrap-server=localhost:30011,localhost:30012,localhost:30013 --topic my-topic 
# 🦋  메세지 수신
./kafka-console-consumer.sh --bootstrap-server=localhost:30011,localhost:30012,localhost:30013 --topic my-topic --group test-consumer --from-beginning
```
</br>