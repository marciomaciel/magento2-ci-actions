FROM evinobr/base-php73-magento:v1.0.0

COPY scripts /opt/scripts
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
