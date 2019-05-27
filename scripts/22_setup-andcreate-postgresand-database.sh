#!/bin/sh


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
apt update
apt install libssl-dev ruby-dev libcurl3-openssl-dev aptitude build-essential libpq-dev zlib1g-dev zlibc libreadline-dev -y
apt install  postgresql postgresql-contrib thin apache2 sudo systemd -y
echo ""
echo ""
echo "okl here"
update-rc.d -f postgresql enable
service postgresql start
service postgresql restart
echo ""
echo ""
update-rc.d -f apache2 enable
service apache2 start
service apache2 restart
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
echo "if user exists to reseed user cancel script, drop user with 'dropuser username' and rerun this script! "
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
echo "select username for skytune setup"
read -p "enter username   " username
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
echo "create root user for postgresql"
sudo -u postgres bash -c  "createuser -sPE root "
echo "create site's username for postgresql"
sudo -u postgres bash -c  "createuser -sPE '$username' "

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
echo "if postgre breaks check values for /etc/postgresql/10/main/pg_hba.conf"
echo " cp pg_hba.conf to backup pg_hba.conf.orig"
echo ""
echo ""
echo ""
echo "cp -rf /etc/postgresql/10/main/pg_hba.conf /etc/postgresql/10/main/pg_hba.conf.orig"
cp -rf /etc/postgresql/10/main/pg_hba.conf /etc/postgresql/10/main/pg_hba.conf.orig

echo "setting changes..."
echo ""
echo ""
echo ""
sleep 2
echo "if this line reads any output crtl-c to fix if it conflicts  "
sed '87q;d' /etc/postgresql/10/main/pg_hba.conf
echo ""
echo ""
echo ""
sleep 3
sed -i "87s/.*/local   all             $username                               peer/g" /etc/postgresql/10/main/pg_hba.conf
sed '87q;d' /etc/postgresql/10/main/pg_hba.conf


