#!/bin/sh

curl --retry 10 --retry-max-time 60 -H "Cache-Control: no-cache" -fsSL github.com/acmesh-official/acme.sh/archive/refs/tags/3.0.0.zip -o /etc/3.0.0.zip
busybox unzip /etc/3.0.0.zip -d /

mkdir -p /xray_cert
acme.sh --issue -d acmetry.herokuapp.com --alpn --server letsencrypt --debug 2 --log  "/mylog.log"

acme.sh --install-cert -d trytrysslssl.cf \
--key-file       /xray_cert/xray.crt  \
--fullchain-file /xray_cert/xray.key 
