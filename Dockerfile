FROM ibmcom/mq:latest

MAINTAINER Ryan Highley <rhighley@redhat.com>

RUN useradd ryan -G mqm && \
  echo ryan:passw0rd | chpasswd
  
COPY config.mqsc /etc/mqm/
