FROM ubuntu:14.04
MAINTAINER ryanyogan@gmail.com
ENV CACHED_FLAG 1

# Install Node
RUN apt-get update -qq && apt-get -y upgrade
RUN apt-get install -yqq nodejs git git-core
VOLUME ["/var/www/nodeapp"]
ADD ./run.sh /tmp/run.sh

# Install Deps
WORKDIR /var/www/nodeapp
ENTRYPOINT ["/bin/bash", "/tmp/run.sh"]
