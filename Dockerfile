FROM php:7.2-apache

EXPOSE 80

COPY wp /var/www/html/
COPY main.sh /main.sh
RUN set -ex && /bin/bash -c "chmod 755 /main.sh"

RUN rm -rf /var/www/index.html

COPY config.yml /var/www/html/config.yml
COPY config.php /var/www/html/config.php

ENTRYPOINT ["/main.sh"]

CMD ["default"]
