FROM ypcs/debian:bullseye

RUN \
    /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes install \
        nodejs \
        npm && \
    /usr/lib/docker-helpers/apt-cleanup

RUN adduser --disabled-password --gecos "user,,," user && \
    mkdir -p /app && \
    chown -R user:user /app

USER user
