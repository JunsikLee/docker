FROM rabbitmq:3-management

#zsh install
RUN apt-get update
RUN apt-get install -y wget git
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)"

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_federation_management rabbitmq_stomp

#EXPOSE 15672
#EXPOSE 5672
#ENTRYPOINT ["rabbit"]

