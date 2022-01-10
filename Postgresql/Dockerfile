FROM postgres:9.6.23

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    sed -i 's/# ko_KR.UTF-8 UTF-8/ko_KR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
    
ENV LANG=ko_KR.utf8 \
    LC_COLLATE=C \
    POSTGRES_INITDB_ARGS=--data-checksums

#EXPOSE 5432
#RUN ["postgres"]
