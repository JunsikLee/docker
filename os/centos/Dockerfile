FROM centos:centos7.9.2009

ENV LC_ALL ko_KR.UTF-8

RUN yum -y update; yum clean all
RUN yum reinstall -y glibc-common
RUN yum -y install yum-fastestmirror

# Install base tools
RUN yum -y install openssh-server openssh-clients openssh-askpass wget net-tools initscripts bind-utils telnet rdate tcpdump dmidecode rpm-build make gcc-c++ cronie which iproute
RUN yum install -y zsh git vim wget util-linux-user
RUN chsh -s $(which zsh)
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

#locale & time
RUN localedef -f UTF-8 -i ko_KR ko_KR.UTF-8
#RUN localedef -i en_US -f UTF-8 en_US.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# SSH
RUN yum install -y openssh-clients openssh-server && \
    yum clean -y all && \
    echo "root:root" | chpasswd

RUN sed -i -e '/PermitRootLogin /d; $a PermitRootLogin yes' /etc/ssh/sshd_config && \
    sed -i -e '/PasswordAuthentication /d; $a PasswordAuthentication yes' /etc/ssh/sshd_config

RUN { \
        echo "LC_ALL=ko_KR.UTF-8"; \
        echo "LANG=ko_KR.UTF-8"; \
    } > /etc/environment

RUN ssh-keygen -A

EXPOSE 22

COPY sh/setup-java.sh /root/setup-java.sh
COPY sh/setup-locale.sh /root/setup-locale.sh 

#CMD [" /sbin/init"]
CMD ["/usr/sbin/sshd", "-D"]
