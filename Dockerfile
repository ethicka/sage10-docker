FROM alpine:3.15
LABEL maintainer="William Donahoe"

RUN apk update && apk add --no-cache \
    bash \
    curl \
    php7 \
    php7-mbstring  \
    nodejs \
    npm \
    composer

RUN npm install -g yarn

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
CMD ["bash"]

EXPOSE 8001