#!/bin/sh -l

set -e

set -eux; \
    mkdir -p ~/.ssh/ ;\
    echo $SSH_KEY > ~/.ssh/id_rsa; \
    chmod 0600 ~/.ssh/id_rsa; \
    ssh-keyscan github.com >> ~/.ssh/known_hosts

echo "Processing $INPUT_PROCESS"

bash /opt/scripts/${INPUT_PROCESS}.sh