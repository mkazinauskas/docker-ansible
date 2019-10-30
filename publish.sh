#!/usr/bin/env bash
ANSIBLE_VERSION="2.4.2.0"
CENTOS_VERSION="7.3.1611"

docker login && \
docker build -t modestukasai/ansible:$ANSIBLE_VERSION \
             --build-arg ansible_version=${ANSIBLE_VERSION} \
             --build-arg centos_version=${CENTOS_VERSION} \
             . && \
docker push modestukasai/ansible:$ANSIBLE_VERSION
