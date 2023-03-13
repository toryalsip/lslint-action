FROM alpine:latest
COPY entrypoint.sh /entrypoint.sh
RUN apk add zip \
    && wget https://github.com/Makopo/lslint/releases/download/v1.3/lslint_v1.3_linux32.zip \
    && unzip lslint_v1.3_linux32.zip \
    && mv lslint /usr/bin \
    && rm lslint_v1.3_linux32.zip
ENTRYPOINT [ "/entrypoint.sh"]
