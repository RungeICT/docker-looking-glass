FROM php:apache
RUN apt-get update \
  && apt-get -y install git
  && git clone https://github.com/respawner/looking-glass.git --branch looking-glass-1.3.0 --single-branch /var/www/html/
  && apt-get purge -y --auto-remove git
