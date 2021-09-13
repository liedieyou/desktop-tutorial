FROM neilpang/acme.sh
RUN apk add --no-cache --virtual curl .build-deps
CMD /entrypoint.sh
