#!/bin/bash
cd ../
apt install letsencrypt net-tools
#certbot certonly
echo "set FQDN , hostname @ prompt Common Name (e.g. server FQDN or YOUR name) []:skytune.online.io      < replace "

openssl req  -nodes -new -x509  -keyout server.key -out server.cert



