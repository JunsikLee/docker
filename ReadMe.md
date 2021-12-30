# docker-dev-env
* 개발을 위한 도구를 도커를 이용해서 한번에 사용가능 docker-compose 스크립트 제작
* 데이터베이스, 메세지 큐, 메모리 디비 포함

</br>

## 수정 이력
* 2021.11.01 최초 생성
* 2021.11.01 PostgreSQL, RabbitMQ 추가
* 2021.11.09 MariadDB 추가
* 2021.12.22 Radis 추가
* 2021.12.30 네트워크 네임 추가, works폴더 추가

</br>

## 사용 방법 
### docker-compose 실행
<pre>
docker-compose up --build -d
</pre>

### docker-compose 종료
<pre>
docker-compose down
</pre>

</br>

## 도커 정보
+  도커 네트워크 이름 - network-docker-devtool]

</br>

## 설치 정보
### 1.Postgresql
```
포트 - 5432
아이디 - postgres
패스워드 - pass
```

</br>

### 2.Rabbitmq
```
관리페이지 - http://127.0.0.1:15672
포트 - 5672
아이디 - user
패스워드 - pass
```
</br>

### 3.Mariaddb
```
포트 - 3306
아이디 - user
패스워드 - pass
```

</br>

### 4.Radis
```
포트 - 6379
```
