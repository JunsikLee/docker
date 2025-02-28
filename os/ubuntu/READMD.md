## 이미지 빌드

``` bash
docker build -t junsiklee/ubuntu --build-arg USER_NAME=junsik --build-arg USER_PASS=1234 .

```

### 이미지 업로드
``` bash
docker push junsiklee/ubuntu:latest

```

### 실행
```bash
docker run -d --rm -p 10022:22  --name ubuntu junsiklee/ubuntu:latest
docker stop ubuntu

```