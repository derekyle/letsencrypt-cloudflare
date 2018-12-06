#!/bin/bash

if [ -z "$CERT_DOMAINS" ]
then
echo $CERT_DOMAINS > /letsencrypt/domains.txt
fi

if [ "$(ls -A /letsencrypt/accounts)" ]; then
echo "Terms already accepted."
else
./dehydrated --register --accept-terms
fi

cd /letsencrypt
./dehydrated -c -g -t dns-01 -k 'hooks/cloudflare/hook.sh'
