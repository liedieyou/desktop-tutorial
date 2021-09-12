#!/bin/sh
$acme.sh --issue --test --standalone -d $DOMAIN --alpn
