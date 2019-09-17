FROM debian:buster-slim

LABEL maintainer="Aneurin Price adp@nyeprice.space"

ARG timezone=Europe/London

RUN set -eux; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    apache2 \
    curl \
    icingacli \
    icingaweb2 \
    icingaweb2-module-monitoring \
    php-curl; \
    echo "date.timezone = $timezone" >> /etc/php/7.3/apache2/php.ini

EXPOSE 80

COPY initcheck /

CMD /initcheck && /usr/sbin/apache2ctl -D FOREGROUND
