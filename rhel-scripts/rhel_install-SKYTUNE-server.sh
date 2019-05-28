#!/bin/bash
echo " run node install 11_install-node-9.8.0"
echo " run postgreSQL install 22_setup-andcreate-postgresand-database"
echo " display aws readme for s3 install 33_create-aws-user.sh"
echo " run install for rails, db and main server 44_rails-DB-setup.sh"

sh rhel_11_install-node-9.8.0.sh
sh rhel_22_setup-andcreate-postgresand-database.sh
sh rhel_33_create-aws-user.sh
sh rhel_44_rails-DB-setup.sh
sh rhel_55-install-SSL-cert.sh

