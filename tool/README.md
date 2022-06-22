## 사용 방법 
### 1. docker-compose 실행
<pre>
sh docker-on.sh
</pre>

### 2. docker-compose 종료
<pre>
sh docker-off.sh
</pre>

</br>

## 네트워크 연결 하기
+ 도커 네트워크 이름 - network-docker-devtool
+ 도커 네트워크 연결 예제 코드 (연결시 호스트 명 service 이름 이용)
```
docker run -d --name ubuntu --network network-docker-devtool ubuont:20.04 bash
```
</br>

## 설치 정보
### 1. Postgresql
```
포트 - 5432
아이디 - postgres
패스워드 - pass
```

</br>

### 2. Rabbitmq
```
관리페이지 - http://127.0.0.1:15672
포트 - 5672
아이디 - user
패스워드 - pass
```
</br>

### 3. Mariaddb
```
포트 - 3306
아이디 - user
패스워드 - pass
```

</br>

### 4. Radis
```
포트 - 6379
```

### 5. Kafka, zookeeper, kafdrop
```
Kafka 포트 - 9092
kafdrop 포트 - 9091
```