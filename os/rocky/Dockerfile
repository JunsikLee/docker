FROM rockylinux

# Install base tools
RUN yum update -y
RUN yum install -y epel-release
RUN yum install openssh-server -y
RUN yum install glibc-langpack-ko -y
RUN echo "root:root" | chpasswd

RUN yum install net-tools htop -y
RUN yum install -y zsh git vim wget util-linux-user
RUN chsh -s $(which zsh)
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# timeZone
RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# Port
EXPOSE 22

# Copy file Sh 
COPY sh/ /root/

CMD ["/usr/sbin/init"]


