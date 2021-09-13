FROM neilpang/acme.sh
RUN apk add --no-cache --virtual .build-deps curl
CMD /entrypoint.sh
