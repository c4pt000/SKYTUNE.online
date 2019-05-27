#!/bin/bash
#run main-bootstrap-installer outside of this scripts directory

echo " run node install 11_install-node-9.8.0"
echo " run postgreSQL install 22_setup-andcreate-postgresand-database"
echo " display aws readme for s3 install 33_create-aws-user.sh"
echo " run install for rails, db and main server 44_rails-DB-setup.sh"

sh 11_install-node-9.8.0
sh 22_setup-andcreate-postgresand-database
sh 33_create-aws-user.sh
sh 44_rails-DB-setup.sh
cd ../
apt install letsencrypt
