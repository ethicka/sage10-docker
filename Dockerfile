FROM alpine:3.18
LABEL maintainer="William Donahoe"

RUN apk update && apk add --no-cache \
    bash \
    curl \
    php81 \
    php81-mbstring  \
    php81-phar \
    php81-openssl \
    php81-fileinfo \
    php81-simplexml \
    php81-tokenizer \
    php81-xmlwriter \
    php81-pdo \         
    php81-session \    
    nodejs \
    npm \
    composer

RUN npm install -g yarn

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["bash"]
