FROM php:5

RUN apt-get update && apt-get install -y \
  git \
  wget

# INSTALL COMPOSER
RUN wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer && \
  chmod a+x /usr/local/bin/composer

#INSTALL PHP-CS-FIXER
RUN wget http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer && \
  chmod a+x /usr/local/bin/php-cs-fixer

