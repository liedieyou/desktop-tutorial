FROM neilpang/acme.sh
RUN apk add --no-cache --virtual curl
CMD /entrypoint.sh
