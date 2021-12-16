FROM alpine:3.15
LABEL maintainer="William Donahoe"

RUN apk update && apk add --no-cache \
    bash \
    curl \
    php7 \
    php7-mbstring  \
    php7-phar \
    php7-json \
    php7-openssl \
    php7-fileinfo \
    nodejs \
    npm \
    composer

RUN npm install -g yarn

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# SHELL ["/bin/bash", "-o", "pipefail", "-c"]
CMD ["bash"]