FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN apk add zip
ENTRYPOINT [ "/entrypoint.sh"]
