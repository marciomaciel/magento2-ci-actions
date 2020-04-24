#!/usr/bin/env bash

set -e

/usr/local/bin/composer install --no-dev --no-progress
chmod +x bin/magento

  bin/magento setup:install --admin-firstname="local" --admin-lastname="local" --admin-email="local@local.com" --admin-user="local" --admin-password="local123" --base-url="http://magento.build/" --backend-frontname="admin" --db-host="mysql" --db-name="magento" --db-user="root" --db-password="magento" --use-secure=0 --use-rewrites=1 --use-secure-admin=0 --session-save="db" --currency="EUR" --language="en_US" --timezone="Europe/Rome" --cleanup-database --skip-db-validation"

bin/magento setup:di:compile
bin/magento deploy:mode:set --skip-compilation production

bin/magento setup:static-content:deploy
#bin/magento setup:static-content:deploy en_US  -a adminhtml
#bin/magento setup:static-content:deploy fr_FR -f -s standard -a adminhtml
#bin/magento setup:static-content:deploy fr_FR -f -s standard  -t Creativestyle/theme-creativeshop

composer dump-autoload -o

rm app/etc/env.php
