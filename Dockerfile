FROM debian:stable
RUN apt-get update && apt-get -y install icingaweb2 icingacli curl php-curl  && echo "date.timezone = Europe/London" >> /etc/php/7.0/apache2/php.ini
EXPOSE 80
CMD service apache2 start && tail -f /dev/null
