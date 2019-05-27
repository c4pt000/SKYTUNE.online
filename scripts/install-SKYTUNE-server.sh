echo " run node install 11_install-node-9.8.0"
echo " run postgreSQL install 22_setup-andcreate-postgresand-database"
echo " display aws readme for s3 install 33_create-aws-user.sh"
echo " run install for rails, db and main server 44_rails-DB-setup.sh"

sh 11_install-node-9.8.0.sh
sh 22_setup-andcreate-postgresand-database.sh
sh 33_create-aws-user.sh
sh 44_rails-DB-setup.sh
cd ../
apt install letsencrypt netstat
#certbot certonly
echo "set FQDN , hostname @ prompt Common Name (e.g. server FQDN or YOUR name) []:skytune.online.io      < replace "

openssl req -new > cert.csr
openssl rsa -in privkey.pem -out key.pem
openssl x509 -in cert.csr -out cert.pem -req -signkey key.pem -days 1001
cat key.pem>>cert.pem
