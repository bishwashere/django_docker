FROM alpine:latest

MAINTAINER Dockerfiles

RUN apk update 
RUN apk add bash \
	openssh \
	python3 \
	python3-dev \
	gcc \
	build-base \
	linux-headers \
	pcre-dev \
	musl-dev \
	libxml2-dev \
	libxslt-dev && \
	python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache

# Requirements - Django
ADD . /home/docker/code/app/
RUN pip3 install -r /home/docker/code/app/requirements.txt

RUN django-admin.py startproject website /home/docker/code/app/
