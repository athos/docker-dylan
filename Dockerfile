FROM ubuntu:xenial
MAINTAINER Shogo Ohta

ARG DYLAN_VERSION=2014.1
ARG DYLAN_INSTALL=/opt

RUN apt-get update && apt-get -y upgrade \
 && apt-get -y install build-essential libgc-dev wget \
 && apt-get autoremove && apt-get clean 

WORKDIR /tmp

RUN wget -q -O - http://opendylan.org/downloads/opendylan/${DYLAN_VERSION}/opendylan-${DYLAN_VERSION}-x86_64-linux.tar.bz2 | tar xjf - \
 && mkdir -p ${DYLAN_INSTALL} \
 && mv opendylan-${DYLAN_VERSION} ${DYLAN_INSTALL}

WORKDIR /usr/src/app

ENV PATH=${DYLAN_INSTALL}/opendylan-${DYLAN_VERSION}/bin:$PATH \
    OPEN_DYLAN_USER_REGISTRIES=/usr/src/app/registry
