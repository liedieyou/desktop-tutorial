#!/bin/sh
mkdir ~/xray_cert
acme.sh  --register-account  -m myemail@trytrysslssl.cf --server zerossl
acme.sh --issue -d trytrysslssl.cf --standalone --httpport 443
acme.sh --install-cert -d trytrysslssl.cf \
--key-file       ~/xray_cert/xray.crt  \
--fullchain-file ~/xray_cert/xray.key 
