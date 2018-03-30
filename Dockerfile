FROM ypcs/debian:buster

RUN \
    echo "deb http://deb.debian.org/debian sid main" >/etc/apt/sources.list.d/sid.list && \
    /usr/local/sbin/docker-upgrade && \
    apt-get --assume-yes install \
        nodejs \
        npm && \
    /usr/local/sbin/docker-cleanup
