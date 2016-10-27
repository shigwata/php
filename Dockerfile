FROM php:5

RUN curl -sS https://getcomposer.org/installer | php \
  && mv -v composer.phar /usr/local/bin/composer

RUN composer require friendsofphp/php-cs-fixer
