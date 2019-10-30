ARG centos_version

FROM centos:${centos_version}

ARG ansible_version

WORKDIR /root

RUN yum update -y && \
    yum --showduplicates list ansible | expand && \
    yum install -y ansible-$ansible_version && \
    yum install -y openssh-clients && \
    yum install -y nano && \
    yum clean all && \
    rm -rf /var/cache/yum