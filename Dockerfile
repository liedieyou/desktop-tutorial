FROM neilpang/acme.sh
RUN apk add --no-cache --virtual .build-deps curl bash openssh ip python \ 
&& rm /bin/sh \ 
&& ln -s /bin/bash /bin/sh
CMD bash /.profile.d/heroku-exec.sh && /entrypoint.sh
