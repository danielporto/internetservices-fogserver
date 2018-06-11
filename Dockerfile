FROM debian:stretch-slim

RUN apt update \
    && apt install -y iproute2 curl \
		      vim net-tools procps \
    && rm -rf /var/lib/apt/lists/* 

RUN curl -L --insecure https://github.com/FOGProject/fogproject/archive/1.5.4.tar.gz -o /tmp/fogserver.tar.gz \
	&& tar xf /tmp/fogserver.tar.gz -C /opt \
	&& rm /tmp/fogserver.tar.gz


