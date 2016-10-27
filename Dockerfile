FROM php:5

RUN apt-get update && apt-get install -y \
  git \
  zip

RUN curl -sS https://getcomposer.org/installer | php \
  && mv -v composer.phar /usr/local/bin/composer

RUN composer global require friendsofphp/php-cs-fixer

ENV PATH PATH="$PATH:$HOME/.composer/vendor/bin"
