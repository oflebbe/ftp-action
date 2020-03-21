FROM alpine:latest

COPY LICENSE README.md /

RUN apk --no-cache add lftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
