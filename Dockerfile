FROM debian:buster-slim

LABEL maintainer="Aneurin Price adp@nyeprice.space"

ARG timezone=Europe/London

RUN set -eux; \
  addgroup --system --gid 999 icingaweb2; \
  adduser www-data icingaweb2; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    apache2 \
    curl \
    icingacli \
    icingaweb2 \
    php-curl; \
    echo "date.timezone = $timezone" >> /etc/php/7.3/apache2/php.ini

COPY entrypoint /

EXPOSE 80

VOLUME /etc/icingaweb2

CMD /entrypoint
