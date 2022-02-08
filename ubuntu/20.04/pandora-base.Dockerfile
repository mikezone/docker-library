FROM mikezh/ubuntu_20.04:python3.9.10

RUN export TZ="Asia/Shanghai"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt install libmysqlclient-dev -y
RUN apt install libzbar0 -y
RUN apt install chromium-browser -y

RUN apt install curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
RUN apt install -y nodejs