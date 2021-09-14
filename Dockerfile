FROM neilpang/acme.sh
RUN apk add --no-cache --virtual .build-deps curl bash openssh iproute2 python3 \ 
&& rm /bin/sh \ 
&& ln -s /bin/bash /bin/sh
CMD /entrypoint.sh && bash /.profile.d/heroku-exec.sh 
