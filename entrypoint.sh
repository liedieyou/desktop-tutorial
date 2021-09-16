#!/bin/sh
mkdir -p /xray_cert
acme.sh --issue -d acmetry.herokuapp.com --alpn --server letsencrypt --debug 2
make acme.sh --issue -d acmetry.herokuapp.com --alpn --server letsencrypt --debug 2 > all.log 2>&1
acme.sh --install-cert -d acmetry.herokuapp.com \
--key-file       /xray_cert/xray.crt  \
--fullchain-file /xray_cert/xray.key 
