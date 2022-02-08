FROM ubuntu:20.04

RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt install tzdata -y
RUN apt install zlib1g-dev libbz2-dev libffi-dev libxml2-dev libxmlsec1-dev -y
RUN apt install python3.9 -y
RUN apt install curl -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN apt install python3.9-distutils -y
RUN python3.9 get-pip.py
RUN rm /usr/local/bin/pip3*

RUN rm -rf /usr/bin/python3 /usr/bin/python3.8 /usr/lib/python3.8 /etc/python3.8 /usr/local/lib/python3.8
RUN ln -s /usr/bin/python3.9 /usr/bin/python3