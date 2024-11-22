FROM ubuntu:24.10

# 환경 설정
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul

# 패키지 업데이트 및 Zsh 설치
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirror.kakao.com/ubuntu/|g' /etc/apt/sources.list.d/ubuntu.sources && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y zsh git curl wget locales fonts-powerline htop net-tools

# UTF-8 설정
RUN locale-gen en_US.UTF-8

# oh-my-zsh 설치
ARG RUNZSH=no
ARG KEEP_ZSHRC=yes
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autosuggestions 플러그인 설치
RUN git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting 플러그인 설치
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 기존 .zshrc 백업
RUN cp ~/.zshrc ~/.zshrc.backup

# zsh 설정
RUN sed -i 's/ZSH_THEME=".*"/ZSH_THEME="agnoster"/' ~/.zshrc
RUN sed -i 's/plugins=(.*)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# 기본쉘 변경 
RUN chsh -s $(which zsh)

# Python3 설치
RUN apt-get install -y python3 python3-pip

# Node.js 설치
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - 
RUN apt-get install -y nodejs

# Nvim 설치
RUN apt-get install -y neovim

RUN git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim && \
    rm -rf ~/.config/nvim/.git

# 기본 작업 디렉토리 설정
WORKDIR /root

# 컨테이너 시작 시 Zsh 실행
CMD ["zsh"]