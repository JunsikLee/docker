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
* 2022.02.16 docker 이미지 zsh 설치 되도록 수정
* 2022.03.02 dockerfiles 폴더 추가 (단일 도커 파일)
* 2021.04.25 dockerfiles -> os 폴더 명으로 변경, os 폴더 README 추가
* 2021.04.27 os rocky 추가 

</br>

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
