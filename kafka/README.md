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
```
</br>

## 3. 다른 도커 Tool 네트워크 연결 하기
+ 도커 네트워크 이름 - network-docker-devtool
+ 도커 네트워크 연결 예제 코드 (연결시 호스트 명 service 이름 이용)
```
docker run -d --name ubuntu --network network-docker-devtool ubuont:20.04 bash
```
</br>
