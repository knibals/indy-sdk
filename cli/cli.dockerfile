FROM ubuntu:18.04

ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1
RUN apt-get update && apt-get install -y apt-transport-https

ARG indy_stream=master

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88
RUN echo "deb https://repo.sovrin.org/sdk/deb bionic $indy_stream" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y indy-cli
