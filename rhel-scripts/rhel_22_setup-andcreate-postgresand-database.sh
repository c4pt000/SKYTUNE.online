#!/bin/bash


echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "installing postgresql-server"

yum install ruby-devel openssl-devel.x86_64 postgresql-devel.x86_64 postgresql-server-10.3 postgresql-contrib thin httpd sudo systemd zlib-devel readline-devel -y
postgresql-setup --initdb --unit postgresql
postgresql-setup upgrade
systemctl enable postgresql
systemctl start postgresql

echo "selinux policies for postgresql with setenforce=1 "
semanage fcontext -a -t postgresql_db_t "/my/new/location(/.*)?"
echo "If default port doesn't work for you, you may need to map postgre's port type to your desired port:"
semanage port -a -t postgresql_port_t -p tcp 5433
echo "If you install a webapp that wants to communicate with PostgreSQL via TCP/IP, you will have to tell SELinux to allow this on the webserver host:"
setsebool -P httpd_can_network_connect_db on

yum groupinstall "Development Tools" -y
echo ""
echo ""
echo "okl here"
systemctl enable postgresql
systemctl start  postgresql
echo ""
echo ""
systemctl enable httpd 
systemctl start httpd 
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "listing users for postgres"
sudo -u postgres bash -c  "psql -c '\du'"
sleep 2
echo ""
echo ""
echo ""
echo ""
echo "if user exists to reseed user, cancel script, drop user with 'dropuser username' and rerun this script! "
echo ""
echo ""
echo "script will pause for 5 seconds"
echo "CRTL-c if user already exists! "
sleep 5
echo ""
echo ""
echo ""
echo ""
echo "create initial user and password"
echo ""
echo ""
echo ""
echo ""
echo "select username for skytune setup"
read -p "enter username   " username
echo ""
echo ""
echo ""
echo ""
echo "select password for skytune setup"
read -p "enter password   " password
sleep 2
echo ""
echo ""
echo ""
echo ""
echo ""
echo "enter password twice exactly as previously entered"
echo ""
echo "create site's username for $username for postgresql"
sudo -u postgres bash -c  "createuser -sPE '$username' "
echo ""
echo ""
echo ""
echo ""
echo ""
echo "enable and create root user for postgresql"
sudo -u postgres bash -c  "createuser -sPE root "
echo ""
echo ""
echo ""
echo ""

sleep 2
echo "listing users for postgres"
sudo -u postgres bash -c  "psql -c '\du'"
sleep 2
echo ""
echo ""
echo ""

echo "pausing for 5 seconds"
sleep 5



echo "setting username in database.yml for database config"
sed -i "27s/.*/  username: $username/g" ../config/database.yml
sed -i "84s/.*/  username: $username/g" ../config/database.yml

echo "settings for ../config/database.yml"
echo ""
sed '27q;d' ../config/database.yml
sed '28q;d' ../config/database.yml
sed '81q;d' ../config/database.yml
sed '82q;d' ../config/database.yml
sed '83q;d' ../config/database.yml
sed '84q;d' ../config/database.yml
sed '85q;d' ../config/database.yml
echo ""
echo "setting password in database.yml for database config"
echo ""
echo ""
sed -i "28s/.*/  password: $password/g" ../config/database.yml
echo ""
echo "password in database.yml set as"
echo ""
sed '28q;d' ../config/database.yml
echo ""
echo ""
echo ""
echo "if user creation failed: run the dropuser command 'dropuser username_here' and rerun this script "
echo ""
echo ""

echo "hardcoding values for pg_hba.conf danger here with this one..."
echo "if postgre breaks check values for /var/lib/pgsql/data/pg_hba.conf"
echo " cp pg_hba.conf to backup pg_hba.conf.orig"
echo ""
echo ""
echo ""
echo "cp -rf /var/lib/pgsql/data/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf.orig"
cp -rf /var/lib/pgsql/data/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf.orig
echo ""
echo ""
echo "overwrite pg_hba.conf /var/lib/pgsql/data/pg_hba"
cp -rf pg_hba.conf /var/lib/pgsql/data/pg_hba.conf

systemctl restart postgresql

sleep 10
