FROM debian:buster-slim

LABEL maintainer="Aneurin Price adp@nyeprice.space"

ARG timezone=Europe/London

RUN set -eux; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    curl \
    php-curl \
    icingaweb2 \
    icingacli ; \
    echo "date.timezone = $timezone" >> /etc/php/7.3/apache2/php.ini

EXPOSE 80

USER www-data

CMD service apache2 start && tail -f /dev/null
