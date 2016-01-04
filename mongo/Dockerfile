FROM ubuntu:14.04
MAINTAINER ryanyogan@gmail.com
ENV chached_FLAG 0
RUN apt-get -qq update && apt-get -yqq upgrade
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list
RUN apt-get update && apt-get install -yqq mongodb-org
RUN mkdir -p /data/db
EXPOSE 27017
ADD run.sh /tmp/run.sh
ADD init.json /tmp/init.json
ENTRYPOINT ["/bin/bash", "/tmp/run.sh"]
