FROM centos:7

RUN yum update -y
RUN yum reinstall -y glibc-common

RUN yum -y install yum-fastestmirror

# SSH
RUN yum install -y openssh-clients openssh-server && \
    yum clean -y all && \
    echo "root:passwd" | chpasswd

RUN sed -i -e '/PermitRootLogin /d; $a PermitRootLogin yes' /etc/ssh/sshd_config && \
    sed -i -e '/PasswordAuthentication /d; $a PasswordAuthentication yes' /etc/ssh/sshd_config

RUN { \
       echo "LC_ALL=en_US.UTF-8"; \
       echo "LANG=en_US.UTF-8"; \
    } > /etc/environment

RUN ssh-keygen -A

# Install base tools
RUN yum install -y zsh git vim wget util-linux-user
RUN chsh -s $(which zsh)
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

EXPOSE 22

COPY sh/setup-java.sh /root/setup-java.sh
COPY sh/setup-locale.sh /root/setup-locale.sh 

CMD ["/usr/sbin/sshd", "-D", "-e"]