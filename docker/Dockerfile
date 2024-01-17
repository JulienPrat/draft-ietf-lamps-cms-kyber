FROM ubuntu:latest
ENV TZ=Europe/Paris

ARG DEBIAN_FRONTEND=noninteractive

#----------------------------------------------------------------------

# Install compilers
RUN apt-get update --no-install-recommends -y

RUN apt-get install -y \
    make

RUN apt-get install -y \
    ruby-full

RUN gem install kramdown-rfc2629

RUN apt-get install -y \
    xml2rfc

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -ms /bin/bash cns

#----------------------------------------------------------------------

USER cns
WORKDIR /home/cns
