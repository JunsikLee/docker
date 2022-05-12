# centos
* centos + ssh 기본 설치
* root/root
<pre>
    cd centos
    sh make.sh
    ssh root@127.0.0.1 -p 1022
</pre>

# ubuntu
* ubuntu + ssh 기본 설치
* root/root
<pre>
    cd ubuntu
    sh make.sh
    ssh root@127.0.0.1 -p 2022
</pre>


# rocky
* rocky 리눅스 + ssh 기본 설치
* root/root

<pre>
    cd rocky
    sh make.sh
    ssh root@127.0.0.1 -p 3022
</pre>



# Docker Hub 업로드 이미지
#### https://hub.docker.com/r/junsiklee/rocky
<pre>
docker run -d --privileged -p 5022:22 --name rocky junsiklee/rocky
</pre>