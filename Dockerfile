FROM centos:8.3.2011

ARG ansible_version

WORKDIR /root

RUN dnf -y makecache && \
    dnf -y install epel-release openssh-clients nano && \
    dnf -y makecache && \
    dnf -y install ansible-2.9.16 && \
    rm -rf /var/cache/dnf