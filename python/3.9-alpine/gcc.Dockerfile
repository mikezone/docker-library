# docker build -t python_3.9-alpine__gcc -f gcc.Dockerfile .
FROM python:3.9-alpine

RUN apk add --no-cache --virtual .build-deps  \
                gcc \
                g++
