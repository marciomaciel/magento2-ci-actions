#!/usr/bin/env bash

set -e

export
#
#mkdir -p ~/.ssh/
#echo $SSH_KEY > ~/.ssh/id_rsa
#chmod 0600 ~/.ssh/id_rsa
#ssh-keyscan github.com >> ~/.ssh/known_hosts
#
#composer install
#chmod +x bin/magento
#
#bin/magento setup:install \
#  --no-interaction \
#  --admin-firstname="local" \
#  --admin-lastname="local" \
#  --admin-email="local@local.com" \
#  --admin-user="local" \
#  --admin-password="local123" \
#  --base-url="http://magento.build/" \
#  --backend-frontname="admin" \
#  --db-host="mysql" \
#  --db-name="magento" \
#  --db-user="root" \
#  --db-password="magento" \
#  --use-secure=0 \
#  --use-rewrites=1 \
#  --use-secure-admin=0 \
#  --session-save="db" \
#  --currency="BRL" \
#  --language="pt_BR" \
#  --timezone="America/Sao_Paulo" \
#  --cleanup-database
#
#bin/magento deploy:mode:set production --skip-compilation && \
#bin/magento setup:static-content:deploy --no-interaction --area=frontend -j 4 en_US pt_BR && \
#bin/magento setup:static-content:deploy --no-interaction --area=adminhtml -j 4 en_US pt_BR && \
#bin/magento setup:di:compile --no-interaction && \
#composer dump-autoload --optimize --no-interaction