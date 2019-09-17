FROM debian:stretch-slim

LABEL maintainer="Aneurin Price adp@nyeprice.space"

ARG timezone=Europe/London

RUN set -eux; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get -y install apt-transport-https wget gnupg; \
  wget -O - https://packages.icinga.com/icinga.key | apt-key add -; \
  	DIST=$(awk -F"[)(]+" '/VERSION=/ {print $2}' /etc/os-release); \
	  echo "deb https://packages.icinga.com/debian icinga-${DIST} main" > \
	 /etc/apt/sources.list.d/${DIST}-icinga.list; \
	 echo "deb-src https://packages.icinga.com/debian icinga-${DIST} main" >> \
	 /etc/apt/sources.list.d/${DIST}-icinga.list; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    apache2 \
    curl \
    icingacli \
    icinga2-ido-mysql \
    icinga2-ido-pgsql
    icingaweb2 \
    icingaweb2-module-monitoring \
    php-curl; \
    echo "date.timezone = $timezone" >> /etc/php/7.0/apache2/php.ini

EXPOSE 80

COPY initcheck /

CMD /initcheck && /usr/sbin/apache2ctl -D FOREGROUND
