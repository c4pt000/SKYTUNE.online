#!/bin/bash
cd ../
apt install letsencrypt net-tools
#certbot certonly
echo "set FQDN , hostname @ prompt Common Name (e.g. server FQDN or YOUR name) []:skytune.online.io      < replace "

openssl req -new > cert.csr
openssl rsa -in privkey.pem -out key.pem
openssl x509 -in cert.csr -out cert.pem -req -signkey key.pem -days 1001
cat key.pem>>cert.pem




