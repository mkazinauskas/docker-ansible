#!/usr/bin/env bash
docker build -t custom_ansible .
docker run -i -t -v $(pwd)/files/playbooks:/playbooks --entrypoint /bin/bash custom_ansible