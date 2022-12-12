FROM alpine:3.16
LABEL maintainer="William Donahoe"

RUN apk update && apk add --no-cache \
    bash \
    curl \
    php8 \
    php8-mbstring  \
    php8-phar \
    php8-openssl \
    php8-fileinfo \
    nodejs \
    npm \
    composer

RUN npm install -g yarn

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["bash"]
