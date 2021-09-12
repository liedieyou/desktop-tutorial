FROM neilpang/acme.sh

ADD entrypoint.sh /opt/entrypoint.sh

RUN apk add --no-cache acme.sh \
 && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
