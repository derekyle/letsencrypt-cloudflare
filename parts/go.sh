#!/bin/bash
if [ -z "$CERT_DOMAINS" ]
echo $CERT_DOMAINS > /letsencrypt/domains.txt
fi
cd /letsencrypt
./dehydrated -c -g -t dns-01 -k 'hooks/cloudflare/hook.sh'
