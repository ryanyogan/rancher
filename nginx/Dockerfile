FROM ubuntu:14.04
ENV CACHED_FLAG 0

RUN apt-get update -yqq && apt-get -y upgrade
RUN apt-get -y -qq install nginx

ADD conf/nginx.conf /etc/nginx/nginx.conf
ADD conf/default /etc/nginx/conf.d/default
ADD ./run.sh /tmp/run.sh

EXPOSE 80

ENTRYPOINT ["/bin/bash", "/tmp/run.sh"]
