FROM php:5

COPY php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y \
  git \
  libbz2-dev \
  wget \
  && docker-php-ext-install \
  bz2 

# INSTALL COMPOSER
RUN wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer && \
  chmod a+x /usr/local/bin/composer

#INSTALL PHP-CS-FIXER
RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer && \
  chmod a+x /usr/local/bin/php-cs-fixer

#INSTALL PHP MESS DETECTOR
RUN wget -c http://static.phpmd.org/php/latest/phpmd.phar -O /usr/local/bin/phpmd && \
  chmod a+x /usr/local/bin/phpmd
