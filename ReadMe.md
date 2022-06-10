# docker-dev-env
개발 환경 구축을 위한 도커 파일 모음 
</br>

## 수정 이력
* 2021.11.01 최초 생성
* 2021.11.01 PostgreSQL, RabbitMQ 추가
* 2021.11.09 MariadDB 추가
* 2021.12.22 Radis 추가
* 2021.12.30 네트워크 네임 추가, works폴더 추가
* 2022.02.16 docker 이미지 zsh 설치 되도록 수정
* 2022.03.02 dockerfiles 폴더 추가 (단일 도커 파일)
* 2022.04.25 dockerfiles -> os 폴더 명으로 변경, os 폴더 README 추가
* 2022.04.27 os rocky 추가 
* 2022.06.10 kafka 추가

</br>

### os 폴더
+ 운영체제 Dockerfile 모음
+ centos, ubuntu, rocky

### tool 폴더
* 개발을 위한 도구를 도커를 이용해서 한번에 사용가능 docker-compose 스크립트 제작
* 데이터베이스, 메세지 큐, 메모리 디비 포함