FROM ubuntu:20.04

RUN apt update -y
RUN DEBIAN_FRONTEND=noninteractive apt install tzdata -y
RUN apt install make gcc libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev libxml2-dev libxmlsec1-dev -y