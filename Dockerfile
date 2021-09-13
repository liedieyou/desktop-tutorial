FROM neilpang/acme.sh
RUN apk add --no-cache --virtual .build-deps
CMD /entrypoint.sh
