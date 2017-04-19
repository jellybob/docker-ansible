FROM ubuntu:16.04

RUN    apt-get update\
    && apt-get install -y \
      python-pip \
      python-boto \
    && apt-get clean \
    && rm -rf /var/log/apt/lists/* /tmp/* /var/tmp/*

ADD . /install
WORKDIR /install
RUN pip install --no-cache-dir -r requirements.txt
RUN rm -rf /install

RUN mkdir /app
WORKDIR /app

ENTRYPOINT /usr/local/bin/ansible-playbook
