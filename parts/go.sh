#!/bin/bash
echo $CERT_DOMAINS > /letsencrypt/domains.txt
cd /letsencrypt
./dehydrated -c -g -t dns-01 -k 'hooks/cloudflare/hook.sh'
