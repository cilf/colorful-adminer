FROM adminer

MAINTAINER marek@cilf.cz

ARG color=default

COPY php.ini /usr/local/etc/php/
COPY general.css /var/www/html/general.css
COPY "color-$color.css" /var/www/html/color.css

RUN sed -i -e 's|>Adminer|>".getenv("ENV_NAME")."|g' /var/www/html/adminer.php \
 && sed -i -e 's|<title>|<link rel="stylesheet" type="text/css" href="general.css"><title>|g' /var/www/html/adminer.php \
 && sed -i -e 's|<title>|<link rel="stylesheet" type="text/css" href="color.css"><title>|g' /var/www/html/adminer.php
