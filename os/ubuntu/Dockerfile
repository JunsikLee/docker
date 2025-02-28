FROM ubuntu:latest

# 환경 설정
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

#ARG ROOT_PASS=root
ARG USER_NAME=user
ARG USER_PASS=user

# OpenSSH 서버 설치
RUN apt-get update && \
    apt-get install -y openssh-server sudo

RUN mkdir /var/run/sshd
RUN sed -i 's/^.*pam_unix.so.*$/password [success=1 default=ignore] pam_unix.so sha512/' /etc/pam.d/common-password && \
    chmod u+s /usr/bin/passwd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
EXPOSE 22

# 계정 설정
#RUN echo "root:$ROOT_PASS" | chpasswd
RUN useradd -m -s /bin/bash $USER_NAME
RUN echo "$USER_NAME:$USER_PASS" | chpasswd
RUN echo "$USER_NAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USER_NAME
WORKDIR /home/$USER_NAME

# ZSH Setup
RUN sudo apt update && sudo apt install -y zsh curl git
RUN sudo usermod --shell $(which zsh) $(whoami)
ENV RUNZSH=no
ENV CHSH=no
ENV ZSH_CUSTOM=/home/$USER_NAME/.oh-my-zsh/custom
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN mkdir -p ${ZSH_CUSTOM}
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
RUN sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="agnoster"/' ~/.zshrc
RUN sed -i 's/plugins=(.*)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# NVim Setup
RUN sudo apt-get install -y python3 python3-pip
RUN sudo curl -fsSL https://deb.nodesource.com/setup_20.x | bash - 
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y neovim
RUN git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim && \
    rm -rf ~/.config/nvim/.git

# 컨테이너 실행 시 SSH 서버 실행
USER root
CMD ["/usr/sbin/sshd", "-D"]