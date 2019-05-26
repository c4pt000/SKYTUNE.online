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
apt install postgresql thin -y
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
echo "listing users for postgres"
sudo -u postgres bash -c  "psql -c '\du'"
sleep 2
echo "if user exists to reseed user cancel script, drop user with 'dropuser username' and rerun this script! "
echo ""
echo ""
echo "script will pause for 10 seconds"
echo "CRTL-c if user already exists! "
sleep 10
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

createuser -sPE "$username" 

sleep 2
echo "listing users for postgres"
sudo -u postgres bash -c  "psql -c '\du'"
sleep 2
echo ""
echo ""
echo ""


sleep 5



echo "setting username in database.yml for database config"
sed -i "32s/.*/username: $username/g" config/database.yml
sed -i "84s/.*/username: $username/g" config/database.yml

echo "settings for config/database.yml"
echo ""
sed '32q;d' config/database.yml
sed '81q;d' config/database.yml
sed '82q;d' config/database.yml
sed '83q;d' config/database.yml
sed '84q;d' config/database.yml
sed '85q;d' config/database.yml
echo ""
echo "setting password in database.yml for database config"
echo ""
echo ""
sed -i "35s/.*/password: $password/g" config/database.yml
echo ""
echo "password in database.yml set as"
echo ""
sed '35q;d' config/database.yml
echo ""
echo ""
echo ""
echo "if user creation failed: run the dropuser command 'dropuser username_here' and rerun this script "
