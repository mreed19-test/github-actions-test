FROM alpine:3.10

RUN apk update && apk upgrade && \
  apk add --update --no-cache \
  bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
