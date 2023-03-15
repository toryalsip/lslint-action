FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN apk add zip \
    && apk add curl
ENTRYPOINT [ "/entrypoint.sh"]
