#!/bin/sh
mkdir -p /xray_cert
acme.sh --issue -d acmetry.herokuapp.com --alpn --server letsencrypt
acme.sh --install-cert -d trytrysslssl.cf \
--key-file       /xray_cert/xray.crt  \
--fullchain-file /xray_cert/xray.key 
