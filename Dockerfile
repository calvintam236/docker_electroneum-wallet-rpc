FROM debian:stretch-slim

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="Electroneum-Wallet-RPC in Docker."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl unzip \
    && curl -L -O https://github.com/electroneum/electroneum/releases/download/v0.11.0.0/linux-x64-0.11.0.0.zip \
    && unzip linux-x64-0.11.0.0.zip \
    && rm linux-x64-0.11.0.0.zip \
    && mv electroneumd /usr/local/bin/electroneum-wallet-rpc \
    && chmod a+x /usr/local/bin/electroneum-wallet-rpc \
    && rm -r * \
    && apt-get -y remove ca-certificates curl unzip \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["electroneum-wallet-rpc"]
CMD ["--help"]
