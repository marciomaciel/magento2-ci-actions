FROM evinobr/base-magento2:v1.3.0

COPY configs/php/php.ini /usr/local/etc/php
COPY scripts /opt/scripts
COPY entrypoint.sh /entrypoint.sh
RUN set -eux; \
    mkdir -p ~/.ssh/ ;\
    echo $SSH_KEY > ~/.ssh/id_rsa; \
    chmod 0600 ~/.ssh/id_rsa; \
    ssh-keyscan github.com >> ~/.ssh/known_hosts

ENTRYPOINT ["/entrypoint.sh"]
