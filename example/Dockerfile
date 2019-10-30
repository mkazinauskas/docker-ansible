FROM mkazinauskas/ansible:latest

WORKDIR /root

COPY files/etc /etc

COPY files/root /root

RUN chmod 755 ~/.ssh && \
    chmod 400 /root/.ssh/id_rsa && \
    eval `ssh-agent -s`; ssh-add ~/.ssh/id_rsa && \
    cat /etc/ansible/hosts && \
    cat /etc/ansible/group_vars/servers && \
    echo "ansible-playbook /playbooks/" > /root/.bash_history