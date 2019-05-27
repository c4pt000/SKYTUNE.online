#!/bin/bash
cd ../
apt install letsencrypt net-tools
#certbot certonly
echo "set FQDN , hostname @ prompt Common Name (e.g. server FQDN or YOUR name) []:skytune.online.io      < replace "

openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365




