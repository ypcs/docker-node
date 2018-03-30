FROM ypcs/debian:buster

RUN /usr/local/sbin/docker-upgrade && \
    apt-get --assume-yes install \
        curl && \
    /usr/local/sbin/docker-cleanup

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN /usr/local/sbin/docker-upgrade && \
    apt-get --assume-yes install \
        nodejs && \
    /usr/local/sbin/docker-cleanup
